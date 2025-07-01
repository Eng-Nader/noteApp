
abstract class AddNoteState {}

class AddIntinalNote extends AddNoteState {}

class AddNoteLoading extends AddNoteState {}

class AddNoteSuccess extends AddNoteState {}

class AddNoteFaliuer extends AddNoteState {
  final String errorMessage;
  AddNoteFaliuer(this.errorMessage);
}


