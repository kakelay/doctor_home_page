import 'package:get/get.dart';

import '../controllers/doctor_apointment_controller.dart';

class DoctorApointmentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DoctorApointmentController>(
      () => DoctorApointmentController(),
    );
  }
}
