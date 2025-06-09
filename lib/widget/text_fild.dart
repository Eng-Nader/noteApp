import 'package:flutter/material.dart';
import 'package:note_app/colors/app_color.dart';

class TextFiled extends StatelessWidget {
  const TextFiled(
      {super.key,
      required this.contentpadding,
      required this.title,
      this.onSaved});
  final EdgeInsetsGeometry contentpadding;
  final String title;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'This Fild is required';
        } else {
          return null;
        }
      },
      cursorColor: AppColor.primaryColor,
      decoration: InputDecoration(
        contentPadding: contentpadding,
        hintText: title,
        hintStyle: const TextStyle(
          color: AppColor.primaryColor,
        ),
        border: const OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 14, 146, 115),
          ),
        ),
      ),
    );
  }
}
