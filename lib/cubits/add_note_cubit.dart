import 'package:note_app/cubits/add_note_state.dart';
import 'package:bloc/bloc.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddIntinalNote());
}
