// ignore_for_file: non_constant_identifier_names

import 'package:bloc_state/app/cores/values/app_colors.dart';
import 'package:flutter/material.dart';

Text TextWidget(
  String text, {
  double fontsize = 14,
  FontWeight weight = FontWeight.normal,
  Color? color,
  TextAlign align = TextAlign.left, 
}) {
  color ??= AppColors.black;
  return Text(
    text,
    textAlign: align,
    style: TextStyle(
      fontSize: fontsize,
      color: color,
      fontWeight: weight,
    ),
  );
}
