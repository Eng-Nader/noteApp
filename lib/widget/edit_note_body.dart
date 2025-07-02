import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/custom_appbar.dart';
import 'package:note_app/widget/notes_metod.dart';
import 'package:note_app/widget/text_fild.dart';

class EditNoteBody extends StatefulWidget {
  const EditNoteBody({super.key, required this.notes});
  final NoteModel notes;

  @override
  State<EditNoteBody> createState() => _EditNoteBodyState();
}

class _EditNoteBodyState extends State<EditNoteBody> {
  String? title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          CustomAppbar(
            text: 'Edit Note',
            icon: Icons.check,
            onPressed: () {
              editNotes();
              BlocProvider.of<NotesCubit>(context).diplayNotes();
              showSnakBar(context ,'Edit Note Sucess');
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFiled(
            contentpadding: const EdgeInsets.symmetric(vertical: 16),
            hintText: 'Title',
            onChange: (value) {
              title = value;
            },
          ),
          const SizedBox(
            height: 20,
          ),
          TextFiled(
            contentpadding: const EdgeInsets.symmetric(vertical: 40),
            hintText: 'Content',
            onChange: (value) {
              subtitle = value;
            },
          )
        ],
      ),
    );
  }

  void editNotes() {
    widget.notes.title = title ?? widget.notes.title;
    widget.notes.subtitle = subtitle ?? widget.notes.subtitle;
    widget.notes.save();
  }
}
