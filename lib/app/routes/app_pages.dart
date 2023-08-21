import 'package:get/get.dart';

import '../modules/start/bindings/start_binding.dart';
import '../modules/start/views/home_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/share_widget/bindings/share_widget_binding.dart';
import '../modules/share_widget/views/share_widget_view.dart';

// ignore_for_file: inference_failure_on_instance_creation, constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const StartView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SHARE_WIDGET,
      page: () => const ShareWidgetView(),
      binding: ShareWidgetBinding(),
    ),
    GetPage(
      name: _Paths.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
  ];
}
