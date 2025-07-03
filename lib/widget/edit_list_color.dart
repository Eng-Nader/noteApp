import 'package:flutter/material.dart';
import 'package:note_app/widget/color_item.dart';
import 'package:note_app/widget/constant.dart';

class ColorEditListView extends StatefulWidget {
  const ColorEditListView({super.key});

  @override
  State<ColorEditListView> createState() => _ColorEditListViewState();
}

class _ColorEditListViewState extends State<ColorEditListView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
              onTap: () {
                currentIndex = index;

                setState(() {});
              },
              child: ColorItem(
                isActive: currentIndex == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
