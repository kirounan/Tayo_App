import 'package:flutter/material.dart';
import 'package:tayo_app/core/utils/colors.dart';

Widget getSelectedWidget(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: TextStyle(
            color: AppColors.pinccColor,
            fontSize: 23,
            fontWeight: FontWeight.bold),
      ),
      Icon(
        Icons.check_box,
        size: 25,
        color: AppColors.pinccColor,
      )
    ],
  );
}
