import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notely/constants.dart';
import 'package:notely/models/note_model.dart';

part 'add_note_state.dart';
class AddNoteCubit extends Cubit<AddNoteState> {
    AddNoteCubit() : super(AddNoteInitial());

  Future<void> addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      // تحقق إذا كان الصندوق مفتوح بالفعل
      if (!Hive.isBoxOpen(kNotes)) {
        await Hive.openBox<NoteModel>(kNotes);
      }

      var notesBox = Hive.box<NoteModel>(kNotes);
      await notesBox.add(note);

      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFailure(message: e.toString()));
    }
  }
}
