import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/notes_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesIntinaldStates());
  List<NoteModel>? notes;

  void diplayNotes() {
    var noteBox = Hive.box<NoteModel>(kprimaryBox);
    notes = noteBox.values.toList();
  }
}
