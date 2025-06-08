import 'package:flutter/material.dart';
import 'package:note_app/colors/app_color.dart';
import 'package:note_app/theme/app_theme.dart';

import 'package:note_app/widget/text_fild.dart';

class AddNoteBouttom extends StatelessWidget {
  const AddNoteBouttom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
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
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: AppColor.primaryColor,
                minimumSize: const Size(double.infinity, 40),
                foregroundColor: Colors.black,
              ),
              onPressed: () {},
              child: const Text(
                'add',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
