import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/share_widget_controller.dart';

class ShareWidgetView extends GetView<ShareWidgetController> {
  const ShareWidgetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ShareWidgetView'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'ShareWidgetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
