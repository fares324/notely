import 'package:bloc/bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:meta/meta.dart';
import 'package:notely/constants.dart';
import 'package:notely/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());
  List<NoteModel>? notes;
  fetchAllNotes() {
    // تحقق إذا كان الصندوق مفتوح بالفعل
    if (!Hive.isBoxOpen(kNotes)) {
      Hive.openBox<NoteModel>(kNotes);
    }

    var notesBox = Hive.box<NoteModel>(kNotes);
    notes = notesBox.values.toList();
    emit(NotesSuccess());
  }
}
