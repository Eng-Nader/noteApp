import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/edit_note_body.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key, required this.notes});
  static String id = "EditPage";
  final NoteModel notes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNoteBody(
        notes: notes,
      ),
    );
  }
}
