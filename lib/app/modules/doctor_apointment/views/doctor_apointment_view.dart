import 'package:bloc_state/app/modules/doctor_apointment/controllers/doctor_apointment_controller.dart';
import 'package:bloc_state/app/shared_widgets/base_scaffold.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DoctorApointmentView extends GetView<DoctorApointmentController> {
  const DoctorApointmentView({super.key});
  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      color1: Colors.black,
      title: 'Doctor  Appointment Date',colortitle: Colors.pink,
      body: const Center(
        child: Text(
          'DoctorApointmentView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
     color: Colors.red,
    );
  }
}
