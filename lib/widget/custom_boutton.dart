import 'package:flutter/material.dart';
import 'package:note_app/colors/app_color.dart';

class CustomBoutton extends StatelessWidget {
  const CustomBoutton({super.key, required this.onPressed});
  final VoidCallback onPressed ; 

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        minimumSize: const Size(double.infinity, 40),
        foregroundColor: Colors.black,
      ),
      onPressed: onPressed,
      child: const Text(
        'add',
        style: TextStyle(
          color: Colors.black,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
