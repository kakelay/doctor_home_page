// ignore_for_file: use_setters_to_change_properties

import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class DetailController extends GetxController {
  final count = 0.obs;
  ScrollController scrollController = ScrollController();
  RxBool isBottomNavigationBarVisible = true.obs;
  int selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
     Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];

  void onItemTapped(int index) {
    selectedIndex = index;
  }

  @override
  void onInit() {
    super.onInit();

    scrollController.addListener(() {
      if (scrollController.position.userScrollDirection ==
          ScrollDirection.forward) {
        isBottomNavigationBarVisible.value = true;
      } else if (scrollController.position.userScrollDirection ==
          ScrollDirection.reverse) {
        isBottomNavigationBarVisible.value = false;
      }
    });
  }
}
