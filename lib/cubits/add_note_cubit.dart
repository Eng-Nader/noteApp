import 'package:hive/hive.dart';
import 'package:note_app/cubits/add_note_state.dart';
import 'package:bloc/bloc.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constant.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddIntinalNote());
  void addNote(NoteModel note) async {
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
