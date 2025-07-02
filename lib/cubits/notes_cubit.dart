import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:note_app/cubits/notes_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widget/constant.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesIntinaldStates());

  void diplayNotes(NoteModel notes) {
    try {
      var fetchbox = Hive.box<NoteModel>(kprimaryBox);
      List<NoteModel> data = fetchbox.values.toList();
      emit(NotesSucessStates(
        notes: data,
      ));
    } catch (e) {
      emit(
        NotesFailuerStates(
          e.toString(),
        ),
      );
    }
  }
}
