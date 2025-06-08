import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_appbar.dart';
import 'package:note_app/widget/text_fild.dart';

class EditNoteBody extends StatelessWidget {
  const EditNoteBody({super.key});

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
            text: 'EditNote',
            icon: Icons.check,
          ),
          SizedBox(
            height: 20,
          ),
          TextFiled(
            contentpadding: EdgeInsets.symmetric(vertical: 16),
            title: '   title',
          ),
          SizedBox(
            height: 20,
          ),
          TextFiled(
            contentpadding: EdgeInsets.symmetric(vertical: 40),
            title: '   content',
          )
        ],
      ),
    );
  }
}
