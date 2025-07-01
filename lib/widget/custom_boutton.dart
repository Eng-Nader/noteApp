import 'package:flutter/material.dart';
import 'package:note_app/colors/app_color.dart';

class CustomBoutton extends StatelessWidget {
  const CustomBoutton(
      {super.key, required this.onPressed, this.isLoading = false});
  final VoidCallback onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        backgroundColor: AppColor.primaryColor,
        minimumSize: const Size(double.infinity, 40),
        foregroundColor: Colors.black,
      ),
      onPressed: onPressed,
      child: isLoading
          ? const SizedBox(
              height: 20,
              width: 20,
              child: Center(
                child: CircularProgressIndicator(
                  color: Colors.black,
                ),
              ),
            )
          : const Text(
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
