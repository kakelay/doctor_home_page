import 'package:bloc_state/app/modules/detail/controllers/detail_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    required this.controller,
    super.key,
  });

  final DetailController controller;

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Visibility(
        visible: controller.isBottomNavigationBarVisible.value,
        child: BottomNavigationBar(
          backgroundColor: Colors.black87, // Customize the background color
          selectedItemColor: Colors.white, // Customize the selected item color
          unselectedItemColor:
              Colors.grey, // Customize the unselected item color
          selectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.bold,
          ), // Customize label style
          unselectedLabelStyle: const TextStyle(
            fontWeight: FontWeight.normal,
          ), // Customize label style
          currentIndex: controller.selectedIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.business),
              label: 'Business',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.bookmark),
              label: 'Save',
            ),
          ],
          onTap: (index) {
            controller.onItemTapped(index);
            controller.isBottomNavigationBarVisible.value =
                true; // Show the bottomNavigationBar when tapping
          },
        ),
      );
    });
  }
}
