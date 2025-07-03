import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/color_item.dart';
import 'package:note_app/widget/constant.dart';

class ColorEditListView extends StatefulWidget {
  const ColorEditListView({super.key, required this.note});
  final NoteModel note;

  @override
  State<ColorEditListView> createState() => _ColorEditListViewState();
}

class _ColorEditListViewState extends State<ColorEditListView> {
  late int currentIndex;
  @override
  void initState() {
    currentIndex = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

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
                widget.note.color = colors[index].value;
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
