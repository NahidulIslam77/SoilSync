<?php
// ============================================================
// SoilSync — lang.php
// Dual language system: English + Bangla (বাংলা)
// Usage: t('key') returns the translated string
// Toggle: ?lang=bn or ?lang=en  OR  POST lang switch
// ============================================================

if (session_status() === PHP_SESSION_NONE) session_start();

// Switch language via GET param
if (isset($_GET['lang']) && in_array($_GET['lang'], ['en', 'bn'])) {
    $_SESSION['lang'] = $_GET['lang'];
}

// Default to English
$GLOBALS['_lang'] = $_SESSION['lang'] ?? 'en';

function t(string $key): string {
    global $_translations, $_lang;
    return $_translations[$_lang][$key] ?? $_translations['en'][$key] ?? $key;
}

function currentLang(): string {
    return $GLOBALS['_lang'] ?? 'en';
}

// ============================================================
// TRANSLATIONS
// ============================================================
$_translations = [

  // ===========================================================
  // ENGLISH
  // ===========================================================
  'en' => [

    // --- App ---
    'app_name'          => 'SoilSync',
    'app_tagline'       => 'Smart Farming',

    // --- Nav Sections ---
    'nav_navigation'    => 'Navigation',
    'nav_monitor'       => 'Monitor',
    'nav_resources'     => 'Resources',
    'nav_support'       => 'Support',
    'nav_expert_tools'  => 'Expert Tools',
    'nav_administration'=> 'Administration',
    'nav_account'       => 'Account',

    // --- Nav Items ---
    'nav_dashboard'     => 'Dashboard',
    'nav_my_fields'     => 'My Fields',
    'nav_my_crops'      => 'My Crops',
    'nav_farmers_card'  => 'Farmers Card',
    'nav_pest_reports'  => 'Pest Reports',
    'nav_outbreak_map'  => 'Outbreak Map',
    'nav_disease'       => 'Disease & Solutions',
    'nav_irrigation'    => 'Irrigation',
    'nav_crop_recommend'=> 'Crop Recommendation',
    'nav_seed_finder'   => 'Seed Finder',
    'nav_market_prices' => 'Market Prices',
    'nav_rotation'      => 'Rotation Advisor',
    'nav_notifications' => 'Notifications',
    'nav_ask_expert'    => 'Ask Expert',
    'nav_my_questions'  => 'My Questions',
    'nav_loan_hub'      => 'Loan Hub',
    'nav_compliance'    => 'Compliance Checker',
    'nav_advisory_mgmt' => 'Advisory Management',
    'nav_answer_q'      => 'Answer Questions',
    'nav_pest_review'   => 'Pest Review',
    'nav_market_input'  => 'Market Price Input',
    'nav_admin_panel'   => 'Admin Panel',
    'nav_user_mgmt'     => 'User Management',
    'nav_system'        => 'System Settings',
    'nav_logout'        => 'Logout',

    // --- Page Titles ---
    'page_dashboard'        => 'Dashboard',
    'page_my_fields'        => 'My Fields',
    'page_my_crops'         => 'My Crops',
    'page_farmers_card'     => 'Farmers Card',
    'page_pest_reports'     => 'Pest Reports',
    'page_outbreak_map'     => 'Smart Outbreak Heatmap',
    'page_disease'          => 'Disease & Solution',
    'page_irrigation'       => 'Smart Irrigation',
    'page_crop_recommend'   => 'Season Wise Crop Recommendation',
    'page_seeds'            => 'Seed Finder',
    'page_market'           => 'Market Prices',
    'page_rotation'         => 'Crop Rotation Advisor',
    'page_notifications'    => 'Notifications',
    'page_faq'              => 'Ask Expert – FAQ',
    'page_my_questions'     => 'My Questions',
    'page_loan_hub'         => 'Loan Hub',
    'page_compliance'       => 'Compliance Checker',
    'page_activity'         => 'Activity Schedule',
    'page_admin'            => 'Admin Panel',
    'page_faq_manage'       => 'Manage Questions',
    'page_faq_answer'       => 'Answer Question',
    'page_my_applications'  => 'My Applications',

    // --- Topbar ---
    'topbar_dark_mode'  => 'Dark Mode',
    'topbar_light_mode' => 'Light Mode',

    // --- Language Toggle ---
    'lang_toggle_label' => 'বাংলা',
    'lang_en'           => 'English',
    'lang_bn'           => 'বাংলা',

    // --- Dashboard ---
    'dash_welcome'          => 'Welcome back',
    'dash_fields'           => 'My Fields',
    'dash_crops'            => 'Active Crops',
    'dash_pest_reports'     => 'Pest Reports',
    'dash_notifications'    => 'Notifications',
    'dash_recent_crops'     => 'Recent Crops',
    'dash_advisory'         => 'Advisory Feed',
    'dash_weather'          => 'Weather',
    'dash_view_all'         => 'View All',
    'dash_no_crops'         => 'No crops yet. Add your first crop!',
    'dash_growing'          => 'Growing',
    'dash_harvested'        => 'Harvested',
    'dash_planted'          => 'Planted',

    // --- Common UI ---
    'btn_save'          => 'Save',
    'btn_cancel'        => 'Cancel',
    'btn_delete'        => 'Delete',
    'btn_edit'          => 'Edit',
    'btn_add'           => 'Add',
    'btn_submit'        => 'Submit',
    'btn_search'        => 'Search',
    'btn_filter'        => 'Filter',
    'btn_view'          => 'View',
    'btn_back'          => 'Back',
    'btn_print'         => 'Print',
    'btn_download'      => 'Download',
    'btn_apply'         => 'Apply',
    'btn_close'         => 'Close',
    'btn_confirm'       => 'Confirm',
    'btn_login'         => 'Login',
    'btn_register'      => 'Register',
    'btn_logout'        => 'Logout',
    'btn_update'        => 'Update',

    // --- Auth ---
    'auth_login_title'      => 'Sign In to SoilSync',
    'auth_register_title'   => 'Create Your Account',
    'auth_email'            => 'Email Address',
    'auth_password'         => 'Password',
    'auth_name'             => 'Full Name',
    'auth_phone'            => 'Phone Number',
    'auth_role'             => 'I am a',
    'auth_role_farmer'      => 'Farmer',
    'auth_role_expert'      => 'Expert',
    'auth_role_admin'       => 'Admin',
    'auth_no_account'       => "Don't have an account?",
    'auth_have_account'     => 'Already have an account?',
    'auth_forgot_pass'      => 'Forgot Password?',

    // --- Farmers Card ---
    'fc_title'          => 'Farmers Card',
    'fc_subtitle'       => 'Bangladesh Government Digital Farmers Registration',
    'fc_loan_score'     => 'Loan Readiness Score',
    'fc_dae_office'     => 'DAE Office Locator',
    'fc_print_card'     => 'Print Card',
    'fc_apply_loan'     => 'Apply for Loan',
    'fc_status_active'  => 'Active',
    'fc_status_pending' => 'Pending',

    // --- Loan Hub ---
    'loan_title'        => 'Loan Hub',
    'loan_subtitle'     => 'Agricultural Loans from Trusted Institutions',
    'loan_compare'      => 'Compare Loans',
    'loan_suggested'    => 'Suggested for You',
    'loan_interest'     => 'Interest Rate',
    'loan_amount'       => 'Loan Amount',
    'loan_duration'     => 'Duration',
    'loan_apply'        => 'Apply Now',

    // --- Pest Reports ---
    'pest_title'        => 'Pest Reports',
    'pest_report_new'   => 'Report New Pest',
    'pest_severity'     => 'Severity',
    'pest_location'     => 'Location',
    'pest_crop'         => 'Affected Crop',
    'pest_description'  => 'Description',
    'pest_photo'        => 'Upload Photo',
    'pest_status_new'   => 'New',
    'pest_status_reviewed' => 'Reviewed',

    // --- Notifications ---
    'notif_title'       => 'Notifications',
    'notif_mark_all'    => 'Mark All as Read',
    'notif_no_notif'    => 'No notifications yet',
    'notif_unread'      => 'Unread',
    'notif_all'         => 'All',

    // --- FAQ / Ask Expert ---
    'faq_title'         => 'Ask an Expert',
    'faq_ask'           => 'Ask a Question',
    'faq_my_q'          => 'My Questions',
    'faq_answered'      => 'Answered',
    'faq_pending'       => 'Pending',
    'faq_category'      => 'Category',
    'faq_question'      => 'Your Question',
    'faq_attach_photo'  => 'Attach Photo (Optional)',

    // --- Market ---
    'market_title'      => 'Market Prices',
    'market_today'      => "Today's Prices",
    'market_crop'       => 'Crop',
    'market_price'      => 'Price (per kg)',
    'market_unit'       => 'Unit',
    'market_updated'    => 'Last Updated',

    // --- Status Labels ---
    'status_active'     => 'Active',
    'status_pending'    => 'Pending',
    'status_approved'   => 'Approved',
    'status_rejected'   => 'Rejected',
    'status_completed'  => 'Completed',
    'status_growing'    => 'Growing',
    'status_harvested'  => 'Harvested',

    // --- Index/Landing ---
    'land_hero_eyebrow'     => 'Bangladesh\'s Smart Farming Platform',
    'land_hero_title'       => 'Farm Smarter, Grow Better',
    'land_hero_desc'        => 'SoilSync empowers Bangladeshi farmers with AI-driven insights, real-time pest tracking, and smart field management.',
    'land_get_started'      => 'Get Started Free',
    'land_learn_more'       => 'Learn More',
    'land_features'         => 'Features',
    'land_stats_farmers'    => 'Farmers',
    'land_stats_fields'     => 'Fields Managed',
    'land_stats_reports'    => 'Pest Reports',
    'land_stats_advisories' => 'Advisories',

    // --- Admin ---
    'admin_title'       => 'Admin Panel',
    'admin_users'       => 'Users',
    'admin_advisories'  => 'Advisories',
    'admin_pest'        => 'Pest Reports',
    'admin_notifications' => 'Notifications',
    'admin_system'      => 'System Info',

    // --- Activity Schedule ---
    'activity_title'    => 'Activity Schedule',
    'activity_today'    => "Today's Tasks",
    'activity_upcoming' => 'Upcoming',
    'activity_done'     => 'Completed',
    'activity_mark_done'=> 'Mark as Done',
    'activity_undo'     => 'Undo',

    // --- Fields ---
    'fields_title'          => 'My Fields',
    'fields_add'            => 'Add New Field',
    'fields_name'           => 'Field Name',
    'fields_area'           => 'Area (acres)',
    'fields_soil_type'      => 'Soil Type',
    'fields_location'       => 'Location',
    'fields_no_fields'      => 'No fields added yet.',

    // --- Errors / Misc ---
    'err_not_found'         => 'Not found.',
    'err_permission'        => 'You do not have permission.',
    'err_login_required'    => 'Please log in first.',
    'msg_saved'             => 'Saved successfully.',
    'msg_deleted'           => 'Deleted successfully.',
    'msg_updated'           => 'Updated successfully.',
    'msg_submitted'         => 'Submitted successfully.',
  ],

  // ===========================================================
  // BANGLA (বাংলা)
  // ===========================================================
  'bn' => [

    // --- App ---
    'app_name'          => 'সয়েলসিঙ্ক',
    'app_tagline'       => 'স্মার্ট কৃষি',

    // --- Nav Sections ---
    'nav_navigation'    => 'নেভিগেশন',
    'nav_monitor'       => 'পর্যবেক্ষণ',
    'nav_resources'     => 'সম্পদ',
    'nav_support'       => 'সহায়তা',
    'nav_expert_tools'  => 'বিশেষজ্ঞ টুলস',
    'nav_administration'=> 'প্রশাসন',
    'nav_account'       => 'অ্যাকাউন্ট',

    // --- Nav Items ---
    'nav_dashboard'     => 'ড্যাশবোর্ড',
    'nav_my_fields'     => 'আমার জমি',
    'nav_my_crops'      => 'আমার ফসল',
    'nav_farmers_card'  => 'কৃষক কার্ড',
    'nav_pest_reports'  => 'পোকার প্রতিবেদন',
    'nav_outbreak_map'  => 'প্রাদুর্ভাব মানচিত্র',
    'nav_disease'       => 'রোগ ও সমাধান',
    'nav_irrigation'    => 'সেচ ব্যবস্থাপনা',
    'nav_crop_recommend'=> 'ফসল সুপারিশ',
    'nav_seed_finder'   => 'বীজ অনুসন্ধান',
    'nav_market_prices' => 'বাজার মূল্য',
    'nav_rotation'      => 'ফসল পরিক্রমা',
    'nav_notifications' => 'বিজ্ঞপ্তি',
    'nav_ask_expert'    => 'বিশেষজ্ঞকে জিজ্ঞাসা',
    'nav_my_questions'  => 'আমার প্রশ্ন',
    'nav_loan_hub'      => 'ঋণ কেন্দ্র',
    'nav_compliance'    => 'সম্মতি পরীক্ষক',
    'nav_advisory_mgmt' => 'পরামর্শ ব্যবস্থাপনা',
    'nav_answer_q'      => 'প্রশ্নের উত্তর',
    'nav_pest_review'   => 'পোকা পর্যালোচনা',
    'nav_market_input'  => 'বাজার মূল্য ইনপুট',
    'nav_admin_panel'   => 'অ্যাডমিন প্যানেল',
    'nav_user_mgmt'     => 'ব্যবহারকারী ব্যবস্থাপনা',
    'nav_system'        => 'সিস্টেম সেটিংস',
    'nav_logout'        => 'লগআউট',

    // --- Page Titles ---
    'page_dashboard'        => 'ড্যাশবোর্ড',
    'page_my_fields'        => 'আমার জমি',
    'page_my_crops'         => 'আমার ফসল',
    'page_farmers_card'     => 'কৃষক কার্ড',
    'page_pest_reports'     => 'পোকার প্রতিবেদন',
    'page_outbreak_map'     => 'স্মার্ট প্রাদুর্ভাব মানচিত্র',
    'page_disease'          => 'রোগ ও সমাধান',
    'page_irrigation'       => 'স্মার্ট সেচ',
    'page_crop_recommend'   => 'মৌসুমী ফসল সুপারিশ',
    'page_seeds'            => 'বীজ অনুসন্ধান',
    'page_market'           => 'বাজার মূল্য',
    'page_rotation'         => 'ফসল পরিক্রমা পরামর্শক',
    'page_notifications'    => 'বিজ্ঞপ্তি',
    'page_faq'              => 'বিশেষজ্ঞকে জিজ্ঞাসা',
    'page_my_questions'     => 'আমার প্রশ্ন',
    'page_loan_hub'         => 'ঋণ কেন্দ্র',
    'page_compliance'       => 'সম্মতি পরীক্ষক',
    'page_activity'         => 'কার্যক্রম সময়সূচি',
    'page_admin'            => 'অ্যাডমিন প্যানেল',
    'page_faq_manage'       => 'প্রশ্ন ব্যবস্থাপনা',
    'page_faq_answer'       => 'প্রশ্নের উত্তর',
    'page_my_applications'  => 'আমার আবেদন',

    // --- Topbar ---
    'topbar_dark_mode'  => 'ডার্ক মোড',
    'topbar_light_mode' => 'লাইট মোড',

    // --- Language Toggle ---
    'lang_toggle_label' => 'English',
    'lang_en'           => 'English',
    'lang_bn'           => 'বাংলা',

    // --- Dashboard ---
    'dash_welcome'          => 'স্বাগতম',
    'dash_fields'           => 'আমার জমি',
    'dash_crops'            => 'সক্রিয় ফসল',
    'dash_pest_reports'     => 'পোকার প্রতিবেদন',
    'dash_notifications'    => 'বিজ্ঞপ্তি',
    'dash_recent_crops'     => 'সাম্প্রতিক ফসল',
    'dash_advisory'         => 'পরামর্শ ফিড',
    'dash_weather'          => 'আবহাওয়া',
    'dash_view_all'         => 'সব দেখুন',
    'dash_no_crops'         => 'কোনো ফসল নেই। প্রথম ফসল যোগ করুন!',
    'dash_growing'          => 'বৃদ্ধি পাচ্ছে',
    'dash_harvested'        => 'সংগ্রহ হয়েছে',
    'dash_planted'          => 'রোপণ হয়েছে',

    // --- Common UI ---
    'btn_save'          => 'সংরক্ষণ করুন',
    'btn_cancel'        => 'বাতিল',
    'btn_delete'        => 'মুছুন',
    'btn_edit'          => 'সম্পাদনা',
    'btn_add'           => 'যোগ করুন',
    'btn_submit'        => 'জমা দিন',
    'btn_search'        => 'খুঁজুন',
    'btn_filter'        => 'ফিল্টার',
    'btn_view'          => 'দেখুন',
    'btn_back'          => 'পিছনে',
    'btn_print'         => 'প্রিন্ট',
    'btn_download'      => 'ডাউনলোড',
    'btn_apply'         => 'প্রয়োগ করুন',
    'btn_close'         => 'বন্ধ করুন',
    'btn_confirm'       => 'নিশ্চিত করুন',
    'btn_login'         => 'লগইন',
    'btn_register'      => 'নিবন্ধন',
    'btn_logout'        => 'লগআউট',
    'btn_update'        => 'আপডেট',

    // --- Auth ---
    'auth_login_title'      => 'সয়েলসিঙ্কে প্রবেশ করুন',
    'auth_register_title'   => 'নতুন অ্যাকাউন্ট তৈরি করুন',
    'auth_email'            => 'ইমেইল ঠিকানা',
    'auth_password'         => 'পাসওয়ার্ড',
    'auth_name'             => 'পূর্ণ নাম',
    'auth_phone'            => 'ফোন নম্বর',
    'auth_role'             => 'আমি একজন',
    'auth_role_farmer'      => 'কৃষক',
    'auth_role_expert'      => 'বিশেষজ্ঞ',
    'auth_role_admin'       => 'অ্যাডমিন',
    'auth_no_account'       => 'অ্যাকাউন্ট নেই?',
    'auth_have_account'     => 'ইতিমধ্যে অ্যাকাউন্ট আছে?',
    'auth_forgot_pass'      => 'পাসওয়ার্ড ভুলে গেছেন?',

    // --- Farmers Card ---
    'fc_title'          => 'কৃষক কার্ড',
    'fc_subtitle'       => 'বাংলাদেশ সরকারের ডিজিটাল কৃষক নিবন্ধন',
    'fc_loan_score'     => 'ঋণ প্রস্তুতি স্কোর',
    'fc_dae_office'     => 'DAE অফিস লোকেটর',
    'fc_print_card'     => 'কার্ড প্রিন্ট করুন',
    'fc_apply_loan'     => 'ঋণের আবেদন',
    'fc_status_active'  => 'সক্রিয়',
    'fc_status_pending' => 'অপেক্ষমান',

    // --- Loan Hub ---
    'loan_title'        => 'ঋণ কেন্দ্র',
    'loan_subtitle'     => 'বিশ্বস্ত প্রতিষ্ঠান থেকে কৃষি ঋণ',
    'loan_compare'      => 'ঋণ তুলনা করুন',
    'loan_suggested'    => 'আপনার জন্য সুপারিশকৃত',
    'loan_interest'     => 'সুদের হার',
    'loan_amount'       => 'ঋণের পরিমাণ',
    'loan_duration'     => 'মেয়াদ',
    'loan_apply'        => 'এখনই আবেদন করুন',

    // --- Pest Reports ---
    'pest_title'        => 'পোকার প্রতিবেদন',
    'pest_report_new'   => 'নতুন পোকা রিপোর্ট করুন',
    'pest_severity'     => 'তীব্রতা',
    'pest_location'     => 'অবস্থান',
    'pest_crop'         => 'আক্রান্ত ফসল',
    'pest_description'  => 'বিবরণ',
    'pest_photo'        => 'ছবি আপলোড করুন',
    'pest_status_new'   => 'নতুন',
    'pest_status_reviewed' => 'পর্যালোচিত',

    // --- Notifications ---
    'notif_title'       => 'বিজ্ঞপ্তি',
    'notif_mark_all'    => 'সব পঠিত চিহ্নিত করুন',
    'notif_no_notif'    => 'এখনো কোনো বিজ্ঞপ্তি নেই',
    'notif_unread'      => 'অপঠিত',
    'notif_all'         => 'সব',

    // --- FAQ / Ask Expert ---
    'faq_title'         => 'বিশেষজ্ঞকে জিজ্ঞাসা করুন',
    'faq_ask'           => 'প্রশ্ন করুন',
    'faq_my_q'          => 'আমার প্রশ্ন',
    'faq_answered'      => 'উত্তর দেওয়া হয়েছে',
    'faq_pending'       => 'অপেক্ষমান',
    'faq_category'      => 'বিভাগ',
    'faq_question'      => 'আপনার প্রশ্ন',
    'faq_attach_photo'  => 'ছবি সংযুক্ত করুন (ঐচ্ছিক)',

    // --- Market ---
    'market_title'      => 'বাজার মূল্য',
    'market_today'      => 'আজকের মূল্য',
    'market_crop'       => 'ফসল',
    'market_price'      => 'মূল্য (প্রতি কেজি)',
    'market_unit'       => 'একক',
    'market_updated'    => 'সর্বশেষ আপডেট',

    // --- Status Labels ---
    'status_active'     => 'সক্রিয়',
    'status_pending'    => 'অপেক্ষমান',
    'status_approved'   => 'অনুমোদিত',
    'status_rejected'   => 'প্রত্যাখ্যাত',
    'status_completed'  => 'সম্পন্ন',
    'status_growing'    => 'বৃদ্ধি পাচ্ছে',
    'status_harvested'  => 'সংগৃহীত',

    // --- Index/Landing ---
    'land_hero_eyebrow'     => 'বাংলাদেশের স্মার্ট কৃষি প্ল্যাটফর্ম',
    'land_hero_title'       => 'স্মার্টভাবে চাষ করুন, ভালো ফলন পান',
    'land_hero_desc'        => 'সয়েলসিঙ্ক বাংলাদেশের কৃষকদের AI-চালিত পরামর্শ, রিয়েল-টাইম পোকা ট্র্যাকিং এবং স্মার্ট জমি ব্যবস্থাপনা দিয়ে ক্ষমতায়িত করে।',
    'land_get_started'      => 'বিনামূল্যে শুরু করুন',
    'land_learn_more'       => 'আরো জানুন',
    'land_features'         => 'বৈশিষ্ট্যসমূহ',
    'land_stats_farmers'    => 'কৃষক',
    'land_stats_fields'     => 'পরিচালিত জমি',
    'land_stats_reports'    => 'পোকার প্রতিবেদন',
    'land_stats_advisories' => 'পরামর্শ',

    // --- Admin ---
    'admin_title'       => 'অ্যাডমিন প্যানেল',
    'admin_users'       => 'ব্যবহারকারী',
    'admin_advisories'  => 'পরামর্শ',
    'admin_pest'        => 'পোকার প্রতিবেদন',
    'admin_notifications' => 'বিজ্ঞপ্তি',
    'admin_system'      => 'সিস্টেম তথ্য',

    // --- Activity Schedule ---
    'activity_title'    => 'কার্যক্রম সময়সূচি',
    'activity_today'    => 'আজকের কাজ',
    'activity_upcoming' => 'আসন্ন',
    'activity_done'     => 'সম্পন্ন',
    'activity_mark_done'=> 'সম্পন্ন চিহ্নিত করুন',
    'activity_undo'     => 'পূর্বাবস্থায় ফিরুন',

    // --- Fields ---
    'fields_title'          => 'আমার জমি',
    'fields_add'            => 'নতুন জমি যোগ করুন',
    'fields_name'           => 'জমির নাম',
    'fields_area'           => 'পরিমাণ (একর)',
    'fields_soil_type'      => 'মাটির ধরন',
    'fields_location'       => 'অবস্থান',
    'fields_no_fields'      => 'এখনো কোনো জমি যোগ করা হয়নি।',

    // --- Errors / Misc ---
    'err_not_found'         => 'পাওয়া যায়নি।',
    'err_permission'        => 'আপনার অনুমতি নেই।',
    'err_login_required'    => 'প্রথমে লগইন করুন।',
    'msg_saved'             => 'সফলভাবে সংরক্ষিত হয়েছে।',
    'msg_deleted'           => 'সফলভাবে মুছে ফেলা হয়েছে।',
    'msg_updated'           => 'সফলভাবে আপডেট হয়েছে।',
    'msg_submitted'         => 'সফলভাবে জমা দেওয়া হয়েছে।',
  ],

];
