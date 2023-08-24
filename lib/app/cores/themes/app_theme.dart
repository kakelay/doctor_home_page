// import 'package:bloc_state/app/cores/values/app_colors.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
 
 

// class AppTheme {
//   AppTheme._();
//   static final instance = AppTheme._();
// }

// extension AppThemeUtils on AppTheme {
//   switchTheme({required bool isDark}) {
//     Get.changeTheme(isDark ? lightTheme() : darkTheme());
//   }

//   switchLanguage({required bool isDark}) {
//     final locale =
//         Get.locale?.languageCode == AppTranslations.enLocale.languageCode
//             ? AppTranslations.khLocale
//             : AppTranslations.enLocale;
//     Get.updateLocale(locale);
//     // MARK: - Also need to update the theme in order to switch the font family
//     Get.changeTheme(isDark ? darkTheme() : lightTheme());
//   }

//   Color dynamicTextColor(bool isDark) {
//     return isDark ? AppColors.white : AppColors.black;
//   }
// }

// extension AppThemeData on AppTheme {
//   AppBarTheme _appBarTheme({required bool isDark}) {
//     return AppBarTheme(
//         iconTheme: IconThemeData(color: dynamicTextColor(isDark)),
//         titleTextStyle: TextStyle(
//             color: dynamicTextColor(isDark),
//             fontWeight: FontWeight.bold,
//             fontSize: 18,
//             fontFamily: _fontFamily(),),
//         backgroundColor: Colors.transparent,
//         elevation: 0,);
//   }

//   String? _fontFamily() {
//     return 'notosan';
//     return Get.locale?.languageCode == AppTranslations.enCode
//         ? GoogleFonts.notoSansKhmer().fontFamily
//         : GoogleFonts.kantumruy().fontFamily;
//   }

//   ElevatedButtonThemeData _elevatedButtonThemeData() {
//     return ElevatedButtonThemeData(
//         style: ButtonStyle(
//             fixedSize: MaterialStateProperty.resolveWith(
//                 (states) => const Size.fromHeight(44),),
//             textStyle: MaterialStateProperty.resolveWith(
//                 (states) => const TextStyle(fontWeight: FontWeight.w500),),),);
//   }

//   TextTheme _textTheme({required bool isDark}) {
//     final textColor = dynamicTextColor(isDark);
//     return TextTheme(
//       displayLarge: TextStyle(color: textColor),
//       displayMedium: TextStyle(color: textColor),
//       displaySmall: TextStyle(color: textColor),
//       headlineMedium: TextStyle(color: textColor, fontWeight: FontWeight.bold),
//       headlineSmall: TextStyle(color: textColor),
//       titleLarge: TextStyle(color: textColor),
//       bodyLarge: TextStyle(color: textColor),
//       bodyMedium: TextStyle(color: textColor),
//       labelLarge: const TextStyle(
//         color: AppColors.primary,
//         fontWeight: FontWeight.w500,
//       ),
//     );
//   }
// }

// extension AppThemeLight on AppTheme {
//   ThemeData lightTheme() {
//     return ThemeData(
//         dividerColor: AppColors.black,
//         brightness: Brightness.light,
//         appBarTheme: _appBarTheme(isDark: false),
//         scaffoldBackgroundColor: AppColors.lightBackground,
//         primaryColor: AppColors.primary.toMaterial(),
//         primarySwatch: AppColors.primary.toMaterial(),
//         elevatedButtonTheme: _elevatedButtonThemeData(),
//         textTheme: _textTheme(isDark: false),
//         fontFamily: _fontFamily(),);
//   }
// }

// extension AppThemeDark on AppTheme {
//   ThemeData darkTheme() {
//     return ThemeData(
//         dividerColor: AppColors.white,
//         brightness: Brightness.dark,
//         appBarTheme: _appBarTheme(isDark: true),
//         scaffoldBackgroundColor: AppColors.darkBackground,
//         primaryColor: AppColors.primary,
//         primarySwatch: AppColors.primary.toMaterial(),
//         elevatedButtonTheme: _elevatedButtonThemeData(),
//         textTheme: _textTheme(isDark: true),
//         fontFamily: _fontFamily(),);
//   }
// }
