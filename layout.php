<?php
// layout.php — shared wrapper for all authenticated pages
if (!function_exists('t')) {
    require_once __DIR__ . '/lang.php';
}

$user        = currentUser($conn);
$uid         = $user ? (int)$user['id'] : 0;
$userName    = $user['name'] ?? 'User';
$userInitial = strtoupper(substr($userName, 0, 1));
$userRole    = $user['role'] ?? 'farmer';
$notifCount  = $uid ? unreadCount($conn, $uid) : 0;
$currentLang = currentLang();
$switchLang  = $currentLang === 'en' ? 'bn' : 'en';

/* =========================
   SVG ICON HELPER
========================= */
function icon(string $name, string $cls = ''): string {
  $cls = $cls ? " class=\"$cls\"" : '';
  $icons = [
    'dashboard'   => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="3" width="7" height="7"/><rect x="14" y="3" width="7" height="7"/><rect x="14" y="14" width="7" height="7"/><rect x="3" y="14" width="7" height="7"/></svg>',
    'fields'      => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polygon points="3 6 9 3 15 6 21 3 21 18 15 21 9 18 3 21"/><line x1="9" y1="3" x2="9" y2="18"/><line x1="15" y1="6" x2="15" y2="21"/></svg>',
    'crops'       => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22V12"/><path d="M5 12C5 8.5 7 5 12 5s7 3.5 7 7"/><path d="M12 12C10 9 7 8 5 9"/><path d="M12 12c2-3 5-4 7-3"/></svg>',
    'farmers_card'=> '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="5" width="20" height="14" rx="2"/><line x1="2" y1="10" x2="22" y2="10"/></svg>',
    'pest'        => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2a5 5 0 0 1 5 5v3H7V7a5 5 0 0 1 5-5z"/><path d="M7 10v4a5 5 0 0 0 10 0v-4"/><path d="M4 10h3M17 10h3M4 14h3M17 14h3M8 22l1-3M16 22l-1-3"/></svg>',
    'outbreak'    => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M12 8v4l3 3"/><path d="M3.6 9h16.8M3.6 15h16.8"/><path d="M12 2a15 15 0 0 1 4 10 15 15 0 0 1-4 10 15 15 0 0 1-4-10 15 15 0 0 1 4-10z"/></svg>',
    'disease'     => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"/><line x1="12" y1="8" x2="12" y2="12"/><line x1="12" y1="16" x2="12.01" y2="16"/></svg>',
    'irrigation'  => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 2.69l5.66 5.66a8 8 0 1 1-11.31 0z"/></svg>',
    'crop_recommend'=> '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 12l2 2 4-4"/><path d="M21 12c0 4.97-4.03 9-9 9S3 16.97 3 12 7.03 3 12 3s9 4.03 9 9z"/></svg>',
    'seeds'       => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M2 22c1.25-1.25 2.5-3.5 2.5-6 0-2.5 2-4.5 4.5-4.5 1.5 0 3 .75 4 2"/><path d="M12 22c1.25-1.25 2.5-3.5 2.5-6 0-2.5 2-4.5 4.5-4.5"/><path d="M22 2s-3 0-6 3-3 6-3 6 3 0 6-3 3-6 3-6z"/></svg>',
    'market'      => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="1" x2="12" y2="23"/><path d="M17 5H9.5a3.5 3.5 0 0 0 0 7h5a3.5 3.5 0 0 1 0 7H6"/></svg>',
    'rotation'    => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="1 4 1 10 7 10"/><polyline points="23 20 23 14 17 14"/><path d="M20.49 9A9 9 0 0 0 5.64 5.64L1 10m22 4l-4.64 4.36A9 9 0 0 1 3.51 15"/></svg>',
    'notifications'=> '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M18 8A6 6 0 0 0 6 8c0 7-3 9-3 9h18s-3-2-3-9"/><path d="M13.73 21a2 2 0 0 1-3.46 0"/></svg>',
    'faq'         => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><path d="M9.09 9a3 3 0 0 1 5.83 1c0 2-3 3-3 3"/><line x1="12" y1="17" x2="12.01" y2="17"/></svg>',
    'my_questions'=> '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/></svg>',
    'loan_hub'    => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="3" y="9" width="18" height="13" rx="2"/><path d="M8 9V5a4 4 0 0 1 8 0v4"/><line x1="12" y1="13" x2="12" y2="17"/></svg>',
    'compliance'  => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="16" y1="13" x2="8" y2="13"/><line x1="16" y1="17" x2="8" y2="17"/><polyline points="10 9 9 9 8 9"/></svg>',
    'advisory'    => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>',
    'answer_q'    => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 15a2 2 0 0 1-2 2H7l-4 4V5a2 2 0 0 1 2-2h14a2 2 0 0 1 2 2z"/><polyline points="9 10 12 13 15 10"/></svg>',
    'pest_review' => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M1 12s4-8 11-8 11 8 11 8-4 8-11 8-11-8-11-8z"/><circle cx="12" cy="12" r="3"/></svg>',
    'market_input'=> '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="12" y1="20" x2="12" y2="10"/><line x1="18" y1="20" x2="18" y2="4"/><line x1="6" y1="20" x2="6" y2="16"/></svg>',
    'expert_dash' => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="18" y1="20" x2="18" y2="10"/><line x1="12" y1="20" x2="12" y2="4"/><line x1="6" y1="20" x2="6" y2="14"/></svg>',
    'admin'       => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="3"/><path d="M19.07 4.93a10 10 0 0 1 1.41 13.44M3.52 6.46a10 10 0 0 0 1.41 13.44M8 21.48A10 10 0 0 0 21.52 6.46M3.48 17.54A10 10 0 0 1 16 2.52"/></svg>',
    'users'       => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 21v-2a4 4 0 0 0-4-4H5a4 4 0 0 0-4 4v2"/><circle cx="9" cy="7" r="4"/><path d="M23 21v-2a4 4 0 0 0-3-3.87"/><path d="M16 3.13a4 4 0 0 1 0 7.75"/></svg>',
    'system'      => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="2" y="3" width="20" height="14" rx="2"/><line x1="8" y1="21" x2="16" y2="21"/><line x1="12" y1="17" x2="12" y2="21"/></svg>',
    'logout'      => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"/><polyline points="16 17 21 12 16 7"/><line x1="21" y1="12" x2="9" y2="12"/></svg>',
    'sun'         => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="5"/><line x1="12" y1="1" x2="12" y2="3"/><line x1="12" y1="21" x2="12" y2="23"/><line x1="4.22" y1="4.22" x2="5.64" y2="5.64"/><line x1="18.36" y1="18.36" x2="19.78" y2="19.78"/><line x1="1" y1="12" x2="3" y2="12"/><line x1="21" y1="12" x2="23" y2="12"/><line x1="4.22" y1="19.78" x2="5.64" y2="18.36"/><line x1="18.36" y1="5.64" x2="19.78" y2="4.22"/></svg>',
    'moon'        => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M21 12.79A9 9 0 1 1 11.21 3 7 7 0 0 0 21 12.79z"/></svg>',
    'menu'        => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><line x1="3" y1="12" x2="21" y2="12"/><line x1="3" y1="6" x2="21" y2="6"/><line x1="3" y1="18" x2="21" y2="18"/></svg>',
    'leaf'        => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M17 8C8 10 5.9 16.17 3.82 22a22 22 0 0 0 15.18-9C19 13 20 9 17 8z"/><path d="M3.82 22c2-2 7.5-7 13.18-7"/></svg>',
    'globe'       => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><circle cx="12" cy="12" r="10"/><line x1="2" y1="12" x2="22" y2="12"/><path d="M12 2a15.3 15.3 0 0 1 4 10 15.3 15.3 0 0 1-4 10 15.3 15.3 0 0 1-4-10 15.3 15.3 0 0 1 4-10z"/></svg>',
    'activity'    => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><polyline points="22 12 18 12 15 21 9 3 6 12 2 12"/></svg>',
    'my_apps'     => '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M14 2H6a2 2 0 0 0-2 2v16a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V8z"/><polyline points="14 2 14 8 20 8"/><line x1="9" y1="13" x2="15" y2="13"/><line x1="9" y1="17" x2="15" y2="17"/><polyline points="9 9 10 9 11 9"/></svg>',
  ];
  $svg = $icons[$name] ?? $icons['dashboard'];
  return "<span class=\"nav-ic-svg{$cls}\">{$svg}</span>";
}

/* =========================
   ROLE BASED NAV SYSTEM
========================= */
$nav = [];

switch ($userRole) {

  /* ================= FARMER ================= */
  case 'farmer':
    $nav = [
      'main' => [
        ['href'=>'dashboard.php',    'icon'=>'dashboard',     'label'=>t('nav_dashboard'),      'key'=>'dashboard'],
        ['href'=>'fields.php',       'icon'=>'fields',        'label'=>t('nav_my_fields'),       'key'=>'fields'],
        ['href'=>'crops.php',        'icon'=>'crops',         'label'=>t('nav_my_crops'),        'key'=>'crops'],
        ['href'=>'farmers_card.php', 'icon'=>'farmers_card',  'label'=>t('nav_farmers_card'),    'key'=>'farmers_card'],
      ],
      'monitor' => [
        ['href'=>'pest_report.php',  'icon'=>'pest',          'label'=>t('nav_pest_reports'),    'key'=>'pest'],
        ['href'=>'outbreak_map.php', 'icon'=>'outbreak',      'label'=>t('nav_outbreak_map'),    'key'=>'outbreak'],
        ['href'=>'disease.php',      'icon'=>'disease',       'label'=>t('nav_disease'),         'key'=>'disease'],
        ['href'=>'irrigation.php',   'icon'=>'irrigation',    'label'=>t('nav_irrigation'),      'key'=>'irrigation'],
      ],
      'resources' => [
        ['href'=>'crop_recommend.php','icon'=>'crop_recommend','label'=>t('nav_crop_recommend'), 'key'=>'crop_recommend'],
        ['href'=>'seeds.php',        'icon'=>'seeds',         'label'=>t('nav_seed_finder'),     'key'=>'seeds'],
        ['href'=>'market.php',       'icon'=>'market',        'label'=>t('nav_market_prices'),   'key'=>'market'],
        ['href'=>'crop_rotation.php','icon'=>'rotation',      'label'=>t('nav_rotation'),        'key'=>'rotation'],
        ['href'=>'notifications.php','icon'=>'notifications', 'label'=>t('nav_notifications'),   'key'=>'notifications','badge'=>$notifCount],
      ],
      'support' => [
        ['href'=>'faq.php',          'icon'=>'faq',           'label'=>t('nav_ask_expert'),      'key'=>'faq'],
        ['href'=>'my_questions.php', 'icon'=>'my_questions',  'label'=>t('nav_my_questions'),    'key'=>'myq'],
        ['href'=>'loan_hub.php',     'icon'=>'loan_hub',      'label'=>t('nav_loan_hub'),        'key'=>'loan_hub'],
        ['href'=>'compliance_checker.php','icon'=>'compliance','label'=>t('nav_compliance'),     'key'=>'compliance'],
      ],
    ];
    break;

  /* ================= EXPERT ================= */
  case 'expert':
    $nav = [
      'expert' => [
        ['href'=>'expert_dashboard.php','icon'=>'expert_dash','label'=>t('nav_dashboard'),       'key'=>'dashboard'],
        ['href'=>'advisory_manage.php', 'icon'=>'advisory',  'label'=>t('nav_advisory_mgmt'),    'key'=>'advisory'],
        ['href'=>'faq_manage.php',      'icon'=>'answer_q',  'label'=>t('nav_answer_q'),         'key'=>'qa'],
        ['href'=>'pest_review.php',     'icon'=>'pest_review','label'=>t('nav_pest_review'),     'key'=>'pest'],
        ['href'=>'market_manage.php',   'icon'=>'market_input','label'=>t('nav_market_input'),   'key'=>'market'],
      ],
    ];
    break;

  /* ================= ADMIN ================= */
  case 'admin':
    $nav = [
      'admin' => [
        ['href'=>'admin.php', 'icon'=>'admin', 'label'=>t('nav_admin_panel'), 'key'=>'admin'],
       
      ],
    ];
    break;
}

?>
<!DOCTYPE html>
<html lang="<?= $currentLang === 'bn' ? 'bn' : 'en' ?>" data-theme="light">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title><?= htmlspecialchars($pageTitle ?? 'SoilSync') ?> — SoilSync</title>

  <?php if ($currentLang === 'bn'): ?>
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link href="https://fonts.googleapis.com/css2?family=Hind+Siliguri:wght@400;500;600;700&display=swap" rel="stylesheet">
  <style>
    :lang(bn), [data-lang="bn"] { font-family: 'Hind Siliguri', sans-serif !important; }
    .nav-ic-svg svg { width: 17px; height: 17px; }
  </style>
  <?php else: ?>
  <style>
    .nav-ic-svg svg { width: 17px; height: 17px; }
  </style>
  <?php endif; ?>

  <style>
    /* ---- SVG icon sizing inside nav ---- */
    .nav-ic-svg {
      display: inline-flex;
      align-items: center;
      justify-content: center;
      flex-shrink: 0;
      width: 20px;
      height: 20px;
    }
    .nav-ic-svg svg {
      width: 17px;
      height: 17px;
      stroke: currentColor;
    }

    /* ---- Language Toggle Button ---- */
    .lang-btn {
      display: inline-flex;
      align-items: center;
      gap: 6px;
      padding: 6px 12px;
      border-radius: 50px;
      border: 1.5px solid var(--border);
      background: var(--surface2);
      color: var(--text2);
      font-size: 12px;
      font-weight: 600;
      cursor: pointer;
      transition: all var(--transition);
      text-decoration: none;
      letter-spacing: 0.3px;
    }
    .lang-btn:hover {
      background: var(--accent-light);
      color: var(--accent);
      border-color: var(--accent);
    }
    .lang-btn svg {
      width: 14px;
      height: 14px;
      stroke: currentColor;
    }

    /* ---- Theme btn icon ---- */
    .theme-btn-wrap {
      display: flex;
      align-items: center;
      gap: 6px;
    }
    .theme-btn .tb-icon { display:inline-flex; align-items:center; }
    .theme-btn .tb-icon svg { width:15px; height:15px; stroke:currentColor; }
  </style>

  <link rel="stylesheet" href="style.css">

  <script>
    (function(){
      var t = localStorage.getItem('soilsync_theme') || 'light';
      document.documentElement.setAttribute('data-theme', t);
    })();
  </script>
</head>

<body<?= $currentLang === 'bn' ? ' data-lang="bn"' : '' ?>>

<div id="ss-cursor"></div>
<div id="ss-cursor-ring"></div>
<div id="sidebar-overlay"></div>

<div class="app-layout">

  <!-- ================= SIDEBAR ================= -->
  <aside class="sidebar" id="sidebar">

    <div class="sidebar-logo">
      <div class="logo-badge"><?= icon('leaf') ?></div>
      <div class="logo-text-wrap">
        <div class="logo-name">SoilSync</div>
        <div class="logo-tag"><?= t('app_tagline') ?></div>
      </div>
    </div>

    <nav class="sidebar-nav">

      <?php
      $sectionLabels = [
        'main'       => t('nav_navigation'),
        'monitor'    => t('nav_monitor'),
        'resources'  => t('nav_resources'),
        'support'    => t('nav_support'),
        'expert'     => t('nav_expert_tools'),
        'admin'      => t('nav_administration'),
      ];

      foreach ($nav as $section => $items):
      ?>
        <div class="nav-section-label">
          <?= $sectionLabels[$section] ?? ucfirst($section) ?>
        </div>

        <?php foreach ($items as $item):
          $isActive = ($activeNav ?? '') === $item['key'];
        ?>
          <a href="<?= $item['href'] ?>" class="nav-item <?= $isActive ? 'active' : '' ?>">
            <?= icon($item['icon']) ?>
            <span><?= $item['label'] ?></span>

            <?php if (!empty($item['badge']) && $item['badge'] > 0): ?>
              <span class="nav-badge"><?= $item['badge'] ?></span>
            <?php endif; ?>
          </a>
        <?php endforeach; ?>

      <?php endforeach; ?>

      <div class="nav-section-label"><?= t('nav_account') ?></div>
      <a href="logout.php" class="nav-item">
        <?= icon('logout') ?>
        <span><?= t('nav_logout') ?></span>
      </a>

    </nav>

    <!-- ================= FOOTER ================= -->
    <div class="sidebar-footer">
      <div class="sidebar-user">
        <div class="u-av"><?= $userInitial ?></div>
        <div>
          <div class="u-name"><?= htmlspecialchars($userName) ?></div>
          <div class="u-role"><?= ucfirst($userRole) ?></div>
        </div>
      </div>

      <button class="theme-btn" id="themeToggle" onclick="toggleTheme()">
        <span class="tb-icon" id="themeIcon">
          <?= icon('moon') ?>
        </span>
        <span id="themeLabel"><?= t('topbar_dark_mode') ?></span>
      </button>
    </div>

  </aside>

  <!-- ================= MAIN ================= -->
  <div class="main-wrap">

    <!-- TOPBAR -->
    <header class="topbar">
      <div class="topbar-left" >
        <button class=" mobile-menu-btn btn" id="mobileMenuBtn">
          <?= icon('menu') ?>
        </button>
        <span class="topbar-title"><?= htmlspecialchars($pageTitle ?? t('nav_dashboard')) ?></span>
      </div>

      <div class="topbar-right">

        <!-- Language Toggle -->
        <a href="?lang=<?= $switchLang ?>" class="lang-btn" title="Switch language">
          <?= icon('globe') ?>
          <?= $currentLang === 'en' ? 'বাংলা' : 'English' ?>
        </a>

        <a href="notifications.php" class="topbar-notif-btn">
          <?= icon('notifications') ?>
          <?php if ($notifCount > 0): ?>
            <span class="notif-dot"></span>
          <?php endif; ?>
        </a>

        <div class="topbar-user">
          <div class="t-av"><?= $userInitial ?></div>
          <span><?= htmlspecialchars(explode(' ', $userName)[0]) ?></span>

          <?php if ($userRole !== 'farmer'): ?>
            <span class="badge badge-info"><?= ucfirst($userRole) ?></span>
          <?php endif; ?>
        </div>
      </div>
    </header>

    <!-- PAGE BODY -->
    <div class="page-body">
