import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.text, required this.icon});
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        IconSearch(
          icon: icon,
        ),
      ],
    );
  }
}
