import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/views/edit_note_view.dart';
import 'package:notes_app/widgets/show_dialog.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return EditNoteView(note: note);
            },
          ),
        );
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                note.title,
                style: TextStyle(color: Colors.black, fontSize: 26),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Text(
                  note.subTitle,
                  style: TextStyle(
                    color: Colors.black.withAlpha(130),
                    fontSize: 18,
                  ),
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  ShowDialog(note: note).showDeletDialog(context);
                },
                icon: Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 33,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Text(
                note.date,
                style: TextStyle(
                  color: Colors.black.withAlpha(130),
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
