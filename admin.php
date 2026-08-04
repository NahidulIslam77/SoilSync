<?php
/* ============================================================
   admin.php — SoilSync Admin Panel
   Full control: Users, Content, System Stats, Notifications
   ============================================================ */
require_once 'db.php';
requireLogin();
$pageTitle = 'Admin Panel';
$activeNav = 'admin';
/* ── Auth guard ── */
$me = currentUser($conn);
if ($me['role'] !== 'admin') {
    header('Location: dashboard.php');
    exit;
}
/* ════════════════════════════════════════
   POST ACTIONS
════════════════════════════════════════ */
$successMsg = '';
$errorMsg   = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $action = $_POST['action'] ?? '';
    /* ── Change user role ── */
    if ($action === 'change_role') {
        $tid  = (int)$_POST['user_id'];
        $role = $conn->real_escape_string($_POST['role']);
        if (in_array($role, ['farmer','expert','admin']) && $tid !== (int)$me['id']) {
            $conn->query("UPDATE users SET role='$role' WHERE id=$tid");
            $successMsg = 'User role updated successfully.';
        } else {
            $errorMsg = 'Cannot change your own role.';
        }
    }
    /* ── Delete user ── */
    if ($action === 'delete_user') {
        $tid = (int)$_POST['user_id'];
        if ($tid !== (int)$me['id']) {
            $conn->query("DELETE FROM notifications WHERE user_id=$tid");
            $conn->query("DELETE FROM users WHERE id=$tid");
            $successMsg = 'User deleted.';
        } else {
            $errorMsg = 'You cannot delete yourself.';
        }
    }
    /* ── Delete advisory ── */
    if ($action === 'delete_advisory') {
        $aid = (int)$_POST['advisory_id'];
        $conn->query("DELETE FROM advisory_feed WHERE id=$aid");
        $successMsg = 'Advisory deleted.';
    }
    /* ── Broadcast notification ── */
    if ($action === 'broadcast') {
        $title = clean($conn, $_POST['notif_title'] ?? '');
        $msg   = clean($conn, $_POST['notif_msg']   ?? '');
        $type  = clean($conn, $_POST['notif_type']  ?? 'advisory');
        if ($title && $msg) {
            $users = $conn->query("SELECT id FROM users");
            $count = 0;
            while ($u = $users->fetch_assoc()) {
                $conn->query("INSERT INTO notifications (user_id,title,message,type,is_read)
                              VALUES ({$u['id']},'$title','$msg','$type',0)");
                $count++;
            }
            $successMsg = "Broadcast sent to $count users.";
        } else {
            $errorMsg = 'Title and message are required.';
        }
    }
    /* ── Reset unread notifications ── */
    if ($action === 'mark_all_read') {
        $conn->query("UPDATE notifications SET is_read=1");
        $successMsg = 'All notifications marked as read.';
    }
}
/* ════════════════════════════════════════
   STATS
════════════════════════════════════════ */
$totalUsers    = (int)$conn->query("SELECT COUNT(*) AS c FROM users")->fetch_assoc()['c'];
$totalFarmers  = (int)$conn->query("SELECT COUNT(*) AS c FROM users WHERE role='farmer'")->fetch_assoc()['c'];
$totalExperts  = (int)$conn->query("SELECT COUNT(*) AS c FROM users WHERE role='expert'")->fetch_assoc()['c'];
$totalFields   = (int)$conn->query("SELECT COUNT(*) AS c FROM fields")->fetch_assoc()['c'];
$totalCrops    = (int)$conn->query("SELECT COUNT(*) AS c FROM farmer_crops")->fetch_assoc()['c'];
$totalPests    = (int)$conn->query("SELECT COUNT(*) AS c FROM pest_reports")->fetch_assoc()['c'];
$totalAdvisory = (int)$conn->query("SELECT COUNT(*) AS c FROM advisory_feed")->fetch_assoc()['c'];
$totalQ        = (int)$conn->query("SELECT COUNT(*) AS c FROM questions")->fetch_assoc()['c'];
$totalAnswered = (int)$conn->query("SELECT COUNT(*) AS c FROM answers")->fetch_assoc()['c'];
$totalNotifs   = (int)$conn->query("SELECT COUNT(*) AS c FROM notifications WHERE is_read=0")->fetch_assoc()['c'];
$totalMarket   = (int)$conn->query("SELECT COUNT(*) AS c FROM market_prices")->fetch_assoc()['c'];
$totalSeeds    = (int)$conn->query("SELECT COUNT(*) AS c FROM seeds")->fetch_assoc()['c'];
/* ── New users this week ── */
$newUsersWeek = (int)$conn->query("
    SELECT COUNT(*) AS c FROM users
    WHERE created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY)
")->fetch_assoc()['c'];
/* ── New pest reports this week ── */
$newPestWeek = (int)$conn->query("
    SELECT COUNT(*) AS c FROM pest_reports
    WHERE created_at >= DATE_SUB(NOW(), INTERVAL 7 DAY)
")->fetch_assoc()['c'];
/* ════════════════════════════════════════
   DATA TABLES
════════════════════════════════════════ */
/* All users */
$users = $conn->query("
    SELECT u.*, l.division, l.district
    FROM users u
    LEFT JOIN locations l ON u.location_id = l.id
    ORDER BY u.created_at DESC
");
/* Advisories */
$advisories = $conn->query("
    SELECT af.*, l.district
    FROM advisory_feed af
    LEFT JOIN locations l ON af.location_id = l.id
    ORDER BY af.created_at DESC
    LIMIT 20
");
/* Recent pest reports */
$pestReports = $conn->query("
    SELECT pr.*, u.name AS farmer_name, c.name AS crop_name, p.name AS pest_name
    FROM pest_reports pr
    JOIN users u ON pr.user_id = u.id
    JOIN crops c ON pr.crop_id = c.id
    JOIN pests p ON pr.pest_id = p.id
    ORDER BY pr.created_at DESC
    LIMIT 15
");
/* Unanswered questions */
$unanswered = $conn->query("
    SELECT q.*, u.name AS farmer_name
