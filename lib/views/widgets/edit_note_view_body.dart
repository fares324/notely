import 'package:flutter/material.dart';
import 'package:notely/views/widgets/custom_appbar.dart';
import 'package:notely/views/widgets/custom_tesxt_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

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
            title: 'Edit Note',
            icon: Icons.check,
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextField(hintText: "Title"),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hintText: "Description",
            maxLines: 5,
          )
        ],
      ),
    );
  }
}