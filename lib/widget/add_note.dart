import 'package:flutter/material.dart';
import 'package:note_app/widget/add_note_form.dart';

class AddNoteBouttom extends StatelessWidget {
  const AddNoteBouttom({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: AddFormNote(),
    );
  }
}
