import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

Widget customTextField(
    {required TextEditingController controller, required String hintText}) {
  return TextFormField(
    controller: controller,
    decoration: InputDecoration(
      filled: true,
      isDense: true,
      hintText: hintText,
      hintStyle: const TextStyle(fontSize: 14),
      fillColor: AppColors.lightGrey,
      border: OutlineInputBorder(
          borderSide: const BorderSide(color: AppColors.fontColor2),
          borderRadius: BorderRadius.circular(15)),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(15),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: AppColors.fontColor2),
        borderRadius: BorderRadius.circular(15),
      ),
    ),
    obscureText: true,
  );
}
