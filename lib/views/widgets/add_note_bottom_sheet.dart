import 'package:flutter/material.dart';
import 'package:notely/views/widgets/custom_tesxt_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
     child: Padding(
       padding: const EdgeInsets.symmetric(horizontal: 16),
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
        ],
       ),
     ),
      
    );
  }
}
