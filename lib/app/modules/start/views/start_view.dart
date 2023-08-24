// ignore_for_file: inference_failure_on_instance_creation, inference_failure_on_function_invocation

import 'package:bloc_state/app/modules/start/controllers/start_controller.dart';
import 'package:bloc_state/app/routes/app_pages.dart';
import 'package:bloc_state/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StartView extends GetView<StartController> {
  const StartView({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // home: const Scaffold(
      //   body: MyCustomForm(),
      // ),
      initialRoute: Routes.START,
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(14, 69, 118, 0.922),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(3, 73, 133, 0.922),
              Color.fromRGBO(4, 77, 140, 0.922),
              Color.fromARGB(255, 3, 65, 115),
              Color.fromARGB(255, 1, 54, 97),
              // Change to your desired shade of blue
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Complete',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Health',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Solutions',
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Ah nek pet sart',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                'Cute',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    right: -60,
                    child: Image.asset(
                      'assets/images/doctor1.png',
                      width: 400,
                      
                      fit: BoxFit.fitWidth,
                      alignment: Alignment.topLeft,
                    ),
                  ),
                  // ignore: lines_longer_than_80_chars
                  Positioned(
                    bottom: 50,
                    left
                    : 20,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.DETAIL);
                      },
                      child: Container(
                        width: 150,
                        height: 50,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius:
                              BorderRadius.all(Radius.circular(8)),
                        ),
                        child: const Center(
                          child: Text(
                            'Get Start',
                            style: TextStyle(
                              color: Color.fromARGB(255, 12, 43, 69),
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
