import 'package:flutter/material.dart';
import 'package:note_app/widget/color_item.dart';

class ColorsListItem extends StatefulWidget {
  const ColorsListItem({super.key});

  @override
  State<ColorsListItem> createState() => _ColorsListItemState();
}

class _ColorsListItemState extends State<ColorsListItem> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xffFABC3C),
    const Color(0xffFFB238),
    const Color(0xffF19143),
    const Color(0xffFF773D),
    const Color(0xffF55536),
  ];
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
