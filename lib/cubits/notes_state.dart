import 'package:note_app/models/note_model.dart';

abstract class NotesState {}

class NotesIntinaldStates extends NotesState {}

class NotesLoadingStates extends NotesState {}

class NotesSucessStates extends NotesState {
  final List<NoteModel> notes ;

  NotesSucessStates({required this.notes}); 
}

class NotesFailuerStates extends NotesState {
  final String errorMessage;
  NotesFailuerStates(
    this.errorMessage,
  );
}
