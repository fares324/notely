import 'package:flutter/material.dart';
import 'package:notely/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      this.maxLines = 1,
      this.onSaved,
      this.onChanged});
  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is Required";
        }
        return null;
      },
      maxLines: maxLines,
      cursorColor: kprimaryClor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(kprimaryClor),
      ),
    );
  }

  OutlineInputBorder buildBorder([Color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: BorderSide(color: Color ?? Colors.white),
    );
  }
}
