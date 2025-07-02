import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/add_note_cubit.dart';
import 'package:note_app/widget/color_item.dart';

class ColorsListItem extends StatefulWidget {
  const ColorsListItem({super.key});

  @override
  State<ColorsListItem> createState() => _ColorsListItemState();
}

class _ColorsListItemState extends State<ColorsListItem> {
  int currentIndex = 0;
  List<Color> colors = [
    const Color(0xffAC3931),
    const Color(0xffE5D352),
    const Color(0xffD9E76C),
    const Color(0xff357D8D),
    const Color(0xff4823CD),
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
                BlocProvider.of<AddNoteCubit>(context).color = colors[index];
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
