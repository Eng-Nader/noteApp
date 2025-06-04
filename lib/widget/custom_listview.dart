import 'package:flutter/material.dart';
import 'package:note_app/widget/custrom_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
    required this.colorList,
  });
  final List<Color> colorList;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CustomCard(color: colorList[index]),
        );
      },
    );
  }
}
