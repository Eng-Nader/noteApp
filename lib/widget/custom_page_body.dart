import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_appbar.dart';
import 'package:note_app/widget/custom_listview.dart';

class CustomPageBody extends StatelessWidget {
  const CustomPageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            text: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: CustomListView(),
          ),
        ],
      ),
    );
  }
}
