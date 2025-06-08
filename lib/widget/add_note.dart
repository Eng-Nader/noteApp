import 'package:flutter/material.dart';

import 'package:note_app/widget/custom_boutton.dart';

import 'package:note_app/widget/text_fild.dart';

class AddNoteBouttom extends StatelessWidget {
  const AddNoteBouttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          const TextFiled(
            contentpadding: EdgeInsets.symmetric(vertical: 16),
            title: '  title',
          ),
          const SizedBox(
            height: 50,
          ),
          const TextFiled(
            contentpadding: EdgeInsets.symmetric(vertical: 50),
            title: '  content',
          ),
          const SizedBox(
            height: 100,
          ),
          const CustomBoutton(),
        ],
      ),
    );
  }
}
