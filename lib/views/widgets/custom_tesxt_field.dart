import 'package:flutter/material.dart';
import 'package:notely/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});
 
  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor:kprimaryClor ,
      decoration: InputDecoration(
        hintText: 'Title',
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimaryClor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
          color:Color?? Colors.white
        ),
        
      );
  }
}