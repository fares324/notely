import 'package:flutter/material.dart';
import 'package:notely/models/note_model.dart';
import 'package:notely/views/edit_note_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return EditNoteView();
          },
        ));
      },
      child: Container(
        padding: EdgeInsets.only(
          top: 24,
          bottom: 24,
          left: 24,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 12, bottom: 12),
                child: Text(
                  note.subtitle,
                  style: TextStyle(color: Colors.grey[700], fontSize: 18),
                ),
              ),
              trailing: IconButton(
                  onPressed: () {
                    note.delete();
                  },
                  icon: Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.black,
                    size: 35,
                  )),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 16,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
