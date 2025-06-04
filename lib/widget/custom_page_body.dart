import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_appbar.dart';
import 'package:note_app/widget/custom_listview.dart';

class CustomPageBody extends StatelessWidget {
  CustomPageBody({super.key});

  List<Color> colorList = [
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.yellow,
    Colors.white,
    Colors.red,
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          const CustomAppbar(),
          Expanded(
              child: CustomListView(
            colorList: colorList,
          )),
        ],
      ),
    );
  }
}
