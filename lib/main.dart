import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notely/constants.dart';
import 'package:notely/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notely/models/note_model.dart';
import 'package:notely/views/notes_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNotes);
  runApp(const Notely());
}

class Notely extends StatelessWidget {
  const Notely({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
       
      ],
      child: Container(),
    );
  }
}
