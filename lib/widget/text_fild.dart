import 'package:flutter/material.dart';
import 'package:note_app/colors/app_color.dart';

class TextFiled extends StatelessWidget {
  const TextFiled(
      {super.key, required this.contentpadding, required this.title});
  final EdgeInsetsGeometry contentpadding;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: AppColor.primaryColor,
      decoration: InputDecoration(
        contentPadding: contentpadding,
        hintText: title,
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: AppColor.primaryColor,
            )),
      ),
    );
  }
}
