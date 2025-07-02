import 'package:flutter/material.dart';
import 'package:note_app/colors/app_color.dart';

class TextFiled extends StatelessWidget {
  const TextFiled(
      {super.key, required this.contentpadding, this.onSaved, this.onChange, required this.hintText});
  final EdgeInsetsGeometry contentpadding;
  final void Function(String?)? onSaved;
  final void Function(String)? onChange;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChange,
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
        hintText: hintText,
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
