// // ignore_for_file: non_constant_identifier_names

// import 'package:get/get.dart';
// import 'package:jotpark_flutter/app/index.dart';

// class APIPath {
//   static String LOGIN_ANNONYMOUSLY = 'verify/login-anonymously';
//   static String LOGIN = 'verify/login-phone-number';

//   static String REFRESH_TOKEN = 'verify/refresh/';
//   static String ZONE = 'zone/customer/find-zones';
//   static String USER_PROFILE = 'profiles';
//   static String ACTIVE_PARKING = 'parking/user-active-parkings?take=15&skip=0';
//   static String LISTEN_QR_CHECKIN = 'parking/customer/parking-events';

//   static String CHECK_PHONE_AVAILABILITY =
//       'verify/check-phone-number-availability';
//   static String NOTIFICATION = 'notifications';
//   static String FEEDBACK = 'feedbacks/feedback-topics';
//     static String FEEDBACK_POST = 'feedbacks';
// }

// class AppStrings {}

// class IconPath {
//   static String google = _getPngPath('google.png');
//   static String facebook = _getPngPath('facebook.png');
//   static String unselectLocationOpen =
//       _getPngPath('unselect_location_open.png');
//   static String unselectLocationClose =
//       _getPngPath('unselect_location_close.png');
//   static String locationOpen = _getPngPath('location_open.png');
//   static String locationCloseActive = _getPngPath('location_close_active.png');

//   static String _getPngPath(String pngName) => AssetHelper.iconPath(pngName);
// }

// class ImagePath {
//   static String homeNoParking = _getPngPath('home_no_parking.png');
//   static String login = _getPngPath('login.png');
//   static String noVehicle = _getPngPath('no_vehicle.png');
//   static String vehicleAppbarIcon = _getPngPath('vehicle_appbar_icon.png');

//   static String _getPngPath(String pngName) => AssetHelper.imagePath(pngName);
// }

// class LocalStorageKey {
//   static String RECENT = 'recent';

//   static String ACCESS_TOKEN = '__access_token__';
//   static String ACCESS_TOKEN_EXPIRE = '__access_token_expire__';
//   static String REFRESH_TOKEN = '__refresh_token__';
//   static String REFRESH_TOKEN_EXPIRE = '__refresh_token_expire__';
//   static String USER_INFO = 'user_info';
//   static String LOCALE_CODE = 'locale_code';
//   static String DEVICE_ID = 'device_id';
// }

// class SvgPath {
//   static String riHistiryFill = _getSvgPath('ri_history_fill.svg');
//   static String editFill = _getSvgPath('edit_fill.svg');
//   static String notification = _getSvgPath('notification.svg');
//   static String curve_arrow_down = _getSvgPath('curve_arrow_down.svg');
//   static String refresh = _getSvgPath('refresh.svg');
//   static String scanQr = _getSvgPath('scan_qr.svg');
//   static String timerFil = _getSvgPath('timer-fil.svg');
//   static String parkingBoxFill = _getSvgPath('parking-box-fill.svg');
//   static String appIconFull = _getSvgPath('app_icon_full.svg');
//   static String map = _getSvgPath('map.svg');
//   static String refreshRecent = _getSvgPath('refresh_recent.svg');
//   static String navigation = _getSvgPath('navigation.svg');
//   static String phoneAndroid = _getSvgPath('phone_android.svg');
//   static String logoTeam = _getSvgPath('logo_team.svg');
//   static String splashScreenIcon = _getSvgPath('splash_screen_icon.svg');
//   static String flashlight = _getSvgPath('flashlight.svg');
//   static String plus = _getSvgPath('plus.svg');
//   static String recycleBin = _getSvgPath('recycle_bin.svg');
//   static String vehicle = _getSvgPath('vehicle.svg');
//   static String magnifier = _getSvgPath('magnifier.svg');
//   static String check = _getSvgPath('check.svg');
//   static String qrScanLine = _getSvgPath('qr_scan_line.svg');
//   static String infoRoundedOutline = _getSvgPath('info_rounded_outline.svg');
//   static String arrowLeft = _getSvgPath('arrow_left.svg');
//   static String cross = _getSvgPath('cross.svg');
//   static String appIcon = _getSvgPath('app_icon.svg');
//   static String clockOutline = _getSvgPath('clock_outline.svg');
//   static String arrowRightThin = _getSvgPath('arrow_right_thin.svg');
//   static String parking = _getSvgPath('parking.svg');
//   static String locationPin = _getSvgPath('location_pin.svg');
//   static String locationActive = _getSvgPath('location_active.svg');
//   static String vehicleActive = _getSvgPath('vehicle_active.svg');
//   static String parkingActive = _getSvgPath('parking_active.svg');
//   static String setting = _getSvgPath('setting.svg');

//   static String _getSvgPath(String svgName) => AssetHelper.svgPath(svgName);
// }

// class TranslationData {
//   static String get about_us => 'about_us'.tr;
//   static String get allow_photo_only_three => 'allow_photo_only_three'.tr;
//   static String get app_version => 'app_version'.tr;
//   static String get back_to_home => 'back_to_home'.tr;
//   static String get check_in => 'check_in'.tr;
//   static String get check_out => 'check_out'.tr;
//   static String get checkout_by => 'checkout_by'.tr;
//   static String get checkout_success => 'checkout_success'.tr;
//   static String get contact => 'contact'.tr;
//   static String get continue_ => 'continue'.tr;
//   static String get date_time => 'date_time'.tr;
//   static String get done => 'done'.tr;
//   static String get duration => 'duration'.tr;
//   static String get enter_merchant_number => 'enter_merchant_number'.tr;
//   static String get enter_ticket_number => 'enter_ticket_number'.tr;
//   static String get language => 'language'.tr;
//   static String get location => 'location'.tr;
//   static String get no_connection => 'no_connection'.tr;
//   static String get parking_information => 'parking_information'.tr;
//   static String get plate_number => 'plate_number'.tr;
//   static String get privacy_policy => 'privacy_policy'.tr;
//   static String get qr_code_id => 'checkout_by'.tr;
//   static String get retry => 'retry'.tr;
//   static String get search => 'search'.tr;
//   static String get search_for_your_location => 'search_for_your_location'.tr;
//   static String get settings => 'settings'.tr;
//   static String get term_and_condition => 'term_and_condition'.tr;
//   static String get there_seem_tobe_a_problem_with_your_connection =>
//       'there_seeget m_tobe_a_problem_with_your_connection'.tr;
//   static String get this_phone_has_already_been_used =>
//       'this_phonget e_has_already_been_user'.tr;
//   static String get ticket_number => 'ticket_number'.tr;
//   static String get vehicle_name => 'vehicle_name'.tr;
//   static String get verify => 'verify'.tr;
//   static String get your_parking_ticket_number =>
//       'your_parking_ticket_number'.tr;

//   static String get your_ticket_has_been_check_out =>
//       'your_tickget et_has_been_check_out'.tr;
// }
