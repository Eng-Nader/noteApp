import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/colors/app_color.dart';
import 'package:note_app/cubits/notes_cubit.dart';
import 'package:note_app/cubits/notes_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/custrom_card.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NotesState>(
      builder: (context, state) {
        List<NoteModel> notes =
            BlocProvider.of<NotesCubit>(context).notes ?? [];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemCount: notes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: CustomCard(
                  note: notes[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
