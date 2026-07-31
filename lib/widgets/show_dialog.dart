import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class ShowDialog {
  final NoteModel note;

  ShowDialog({required this.note});
  void showDeletDialog(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text(
            'Delete Note',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          content: const Text(
            'Are you sure you want to Delete this Note?',
            style: TextStyle(fontSize: 16),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            TextButton(
              onPressed: () async {
                note.delete();
                BlocProvider.of<NotesCubitCubit>(
                  context,
                ).fetchAllNotes();
                Navigator.pop(context);
              },
              child: const Text(
                'Delete',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
