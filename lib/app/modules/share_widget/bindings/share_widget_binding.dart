import 'package:get/get.dart';

import '../controllers/share_widget_controller.dart';

class ShareWidgetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ShareWidgetController>(
      () => ShareWidgetController(),
    );
  }
}
