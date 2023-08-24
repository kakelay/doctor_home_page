// ignore_for_file: avoid_dynamic_calls, non_constant_identifier_names

import 'package:bloc_state/app/cores/themes/app_style.dart';
import 'package:bloc_state/app/cores/values/app_colors.dart';
import 'package:bloc_state/app/shared_widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget RoundedButton({
  required String text,
  Widget? leadingIcon,
  Widget? trailingIcon,
  Function? onPress,
  Color? borderColor,
  Color? fillColor,
  Color? textColor,
  double padding = AppStyle.SPACING_SMALL,
  double? height = AppStyle.TEXT_FIELD_HEIGHT,
  bool isDisable = false,
  bool isDisableTextOnly = false,
  bool showLoadingOverlay = false,
  double borderRadius = 10,
}) {
  borderColor ??= AppColors.green;
  fillColor ??= AppColors.white;
  textColor ??= AppColors.black;

  return GestureDetector(
    onTap: () {
      if (onPress != null) {
        if (!isDisable) onPress();
      }
    },
    child: Stack(
      children: [
        Container(
          width: Get.width,
          alignment: Alignment.center,
          height: height,
          padding: EdgeInsets.symmetric(vertical: padding),
          decoration: BoxDecoration(
            border: Border.all(
              color: isDisable ? Colors.transparent : borderColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
            color: fillColor == Colors.transparent
                ? fillColor
                : fillColor.withOpacity(isDisable ? 0.3 : 1),
          ),
          child: showLoadingOverlay
              ? const SizedBox(
                  height: 30,
                  width: 30,
                  child: CircularProgressIndicator(
                    color: AppColors.white,
                  ),
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (leadingIcon != null) leadingIcon,
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppStyle.SPACING_SMALL,
                      ),
                      child: TextWidget(
                        text,
                        fontsize: 16,
                        color:
                            textColor.withOpacity(isDisableTextOnly ? .3 : 1),
                        weight: FontWeight.w600,
                      ),
                    ),
                    if (trailingIcon != null) trailingIcon,
                  ],
                ),
        ),
        // if (isDisable)
        //   Container(
        //     width: Get.width,
        //     alignment: Alignment.center,
        //     height: height,
        //     padding: EdgeInsets.symmetric(vertical: padding),
        //     decoration: BoxDecoration(
        //       border: Border.all(color: AppColors.darkGrey.withOpacity(.5)),
        //       borderRadius: BorderRadius.circular(10),
        //       color: AppColors.darkGrey.withOpacity(.5),
        //     ),
        //   ),
      ],
    ),
  );
}
