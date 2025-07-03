import 'dart:ui';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/add_note_state.dart';
import 'package:bloc/bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constant.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddIntinalNote());
  Color color = const Color(0xffAC3931); 
  void addNote(NoteModel note) async {
    note.color = color.value;
    emit(AddNoteLoading());

    try {
      var notebox = Hive.box<NoteModel>(kprimaryBox);

      await notebox.add(note);
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliuer(e.toString()));
    }
  }
}
