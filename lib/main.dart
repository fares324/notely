import 'package:flutter/material.dart';
import 'package:notely/views/notes_view.dart';

void main() {
  runApp(const Notely());
}
class Notely extends StatelessWidget {
  const Notely({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notely',
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',

      ),
      home: NotesView(),
    );
  }
}