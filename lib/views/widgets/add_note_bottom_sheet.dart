import 'package:flutter/material.dart';
import 'package:notely/views/widgets/custom_button.dart';
import 'package:notely/views/widgets/custom_tesxt_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
         children: [
           SizedBox(
             height: 32,
           ),
           CustomTextField(hintText: 'Title',),
           SizedBox(
             height: 16,
           ),
           CustomTextField(hintText: 'Content',maxLines: 5,),
            SizedBox(
              height: 40,
            ),
           CustomButtton(),
           SizedBox(
            height: 50,
           )
         ],
        ),
      ),
    );
  }
}
