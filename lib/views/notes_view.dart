import 'package:flutter/material.dart';
import 'package:notes_app/constants.dart';
import 'package:notes_app/widgets/add_note_bottom_sheet.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/notes_listview.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: kmaincolor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return AddNoteBottomsheet();
            },
          );
        },
        child: Icon(Icons.add, color: Colors.black),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 60),
            CustomAppbar(title: 'Notes', icon: Icons.search),
            Expanded(child: NotesListView()),
          ],
        ),
      ),
    );
  }
}
