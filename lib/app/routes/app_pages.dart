import 'package:get/get.dart';

import '../modules/all_product/bindings/all_product_binding.dart';
import '../modules/all_product/views/all_product_view.dart';
import '../modules/detail/bindings/detail_binding.dart';
import '../modules/detail/views/detail_view.dart';
import '../modules/doctor_apointment/bindings/doctor_apointment_binding.dart';
import '../modules/doctor_apointment/views/doctor_apointment_view.dart';
import '../modules/home_page/bindings/home_page_binding.dart';
import '../modules/home_page/views/home_page_view.dart';
import '../modules/product_detail/bindings/product_detail_binding.dart';
import '../modules/product_detail/views/product_detail_view.dart';
import '../modules/start/bindings/start_binding.dart';
import '../modules/start/views/start_view.dart';

// ignore_for_file: inference_failure_on_instance_creation, constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.START;

  static final routes = [
    GetPage(
      name: Routes.START,
      page: () => const MyCustomForm(),
      binding: StartBinding(),
    ),
    GetPage(
      name: Routes.HOME_PAGE,
      page: () => const HomePageView(),
      binding: HomePageBinding(),
    ),
    GetPage(
      name: Routes.DETAIL,
      page: () => DetailView(),
      binding: DetailBinding(),
    ),
    GetPage(
      name: Routes.DOCTOR_APOINTMENT,
      page: () => const DoctorApointmentView(),
      binding: DoctorApointmentBinding(),
    ),
    GetPage(
      name: Routes.PRODUCT_DETAIL,
      page: () => const ProductDetailView(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: Routes.ALL_PRODUCT,
      page: () => const AllProductView(),
      binding: AllProductBinding(),
    ),
  ];
}
