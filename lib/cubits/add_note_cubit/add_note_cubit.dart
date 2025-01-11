import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notely/constants.dart';
import 'package:notely/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());
  
  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NoteModel>(kNotes);
      emit(AddNoteSuccess());
      await notesBox.add(note);
    } on Exception catch (e) {
      emit(AddNoteFailure(message: e.toString()));
    }
  }
}
