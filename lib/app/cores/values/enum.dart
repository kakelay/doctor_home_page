// import 'package:jotpark_flutter/app/index.dart';

// enum API_STATUS { initial, loading, success, error, loading_more }

// enum INPUT_PHONE_TYPE { LOGIN, NEW_PHONE }

// enum NotificationType { zone, announcement, checkin_success }

// enum OTP_Request_Type { LOGIN, CONFIRM_NEW_PHONE, CONFIRM_OLD_PHONE }

// enum ScanQRType { checkin, checkout }

// extension notificationExtension on NotificationType {
//   String get getIconName {
//     switch (this) {
//       case NotificationType.zone:
//         return 'map.svg';
//       case NotificationType.announcement:
//         return 'world.svg';
//       default:
//         return 'bell.svg';
//     }
//   }
// }

// extension qrtypeExtension on ScanQRType {
//   String get getButtonText {
//     switch (this) {
//       case ScanQRType.checkin:
//         return TranslationData.enter_ticket_number;
//       case ScanQRType.checkout:
//         return TranslationData.enter_merchant_number;
//     }
//   }

//   String get getTitle {
//     switch (this) {
//       case ScanQRType.checkin:
//         return TranslationData.check_in;
//       case ScanQRType.checkout:
//         return TranslationData.check_out;
//     }
//   }
// }
