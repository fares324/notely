import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notely/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notely/views/widgets/add_note_bottom_sheet.dart';
import 'package:notely/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubitCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          onPressed: () {
            showModalBottomSheet(
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(24)),
              context: context,
              builder: (context) {
                return AddNoteBottomSheet();
              },
            );
          },
          child: Icon(Icons.add),
        ),
        body: NotesViewBody(),
      ),
    );
  }
}
