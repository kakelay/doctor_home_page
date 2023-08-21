import 'package:get/get.dart';

import '../controllers/start_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartController>(
      () => StartController(),
    );
  }
}
