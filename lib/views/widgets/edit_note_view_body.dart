import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notely/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notely/models/note_model.dart';
import 'package:notely/views/widgets/custom_appbar.dart';
import 'package:notely/views/widgets/custom_tesxt_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppBar(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subtitle = content ?? widget.note.subtitle;
              widget.note.save();
              BlocProvider.of<NotesCubitCubit>(context).fetchAllNotes();
         
              Navigator.pop(context);
                   showSaveDialog(context);
            },
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(
            hintText: widget.note.title,
            onChanged: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            onChanged: (value) {
              content = value;
            },
            hintText: widget.note.subtitle,
            maxLines: 5,
          )
        ],
      ),
    );
  }

  Future<dynamic> showSaveDialog(BuildContext context) {
    return showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: Text('Note Updated'),
                  content: Text('Your note has been updated successfully.',style: TextStyle(
                    fontSize: 16
                  ),),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Ok'),
                    )
                  ],

                );
              },
            );
  }

}
