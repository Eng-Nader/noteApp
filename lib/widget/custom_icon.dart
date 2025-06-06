import 'package:flutter/material.dart';

class IconSearch extends StatelessWidget {
  const IconSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: const Color(0xff3B3B3B),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Icon(
        Icons.search,
        size: 30,
      ),
    );
  }
}
