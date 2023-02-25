import 'package:flutter/material.dart';

Widget getUnselectedWidget(String text) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        text,
        style: const TextStyle(
            color: Colors.black, fontSize: 23, fontWeight: FontWeight.bold),
      ),
    ],
  );
}
