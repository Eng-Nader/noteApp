import 'package:flutter/material.dart';
import 'package:note_app/colors/app_color.dart';
import 'package:note_app/widget/custrom_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: CustomCard(color: AppColor.colorList[index]),
        );
      },
    );
  }
}
