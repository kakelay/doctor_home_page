// ignore_for_file: must_be_immutable

import 'package:bloc_state/app/cores/themes/app_style.dart';
import 'package:bloc_state/app/cores/values/app_colors.dart';
import 'package:flutter/material.dart';

class BaseScaffold extends StatelessWidget {
  BaseScaffold({
    super.key,
    required this.body,
    this.hideBackButton = false,
    this.title = '',
    this.topPadding = AppStyle.SPACING_LARGE,
    this.horizontalPadding = AppStyle.SPACING_LARGE,
    this.bottomNavigationBarWidget,
    this.color = Colors.white,
    this.color1 = Colors.white,
    this.colortitle =Colors.white,
  });
  final Widget body;
  final bool hideBackButton;
  final String title;
  final double topPadding;
  final double horizontalPadding;
  final Widget? bottomNavigationBarWidget;
  Color color;
  Color color1;
  Color colortitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.blue1,
        leading: _backButton(),
        title: title == ''
            ? null
            : Text(
                title,
                style: TextStyle(color: colortitle),
              ),
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          
        ],
      ),
      body: SafeArea(
        minimum: EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: Padding(
          padding: EdgeInsets.only(
            top: topPadding,
          ),
          child: body,
        ),
      ),
      bottomNavigationBar: bottomNavigationBarWidget,
    );
  }

  Widget? _backButton() {
    return (hideBackButton
        ? null
        : Row(
            children: [
              const Spacer(),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: color,
                  shape: BoxShape.circle,
                ),
                child: Stack(
                  alignment: AlignmentDirectional.center,
                  children: [
                    Icon(
                      Icons.arrow_back,
                      color: color1,
                    ),
                    BackButton(
                      color: color1,
                    ),
                  ],
                ),
              ),
            ],
          ));
  }
}
