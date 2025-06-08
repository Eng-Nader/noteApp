import 'package:flutter/material.dart';
import 'package:note_app/widget/edit_note_body.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});
  static String id = "EditPage"; 

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: EditNoteBody(),
    );
  }
}
