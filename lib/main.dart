import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notely/constants.dart';
import 'package:notely/models/note_model.dart';
import 'package:notely/simple_bloc_observer.dart';
import 'package:notely/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotes);
  runApp(const Notely());
}

class Notely extends StatelessWidget {
  const Notely({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notely",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesView(),
    );
  }
}
