import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/notes_cubit/notes_cubit_cubit.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteView extends StatefulWidget {
  EditNoteView({super.key, required this.note});

  NoteModel note;

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, content;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 60),
            CustomAppbar(
              title: 'Edit Note',
              icon: Icons.check,
              onpreess: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subTitle =
                    content ?? widget.note.subTitle;
                widget.note.save();
                BlocProvider.of<NotesCubitCubit>(
                  context,
                ).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            const SizedBox(height: 50),
            CustomTextField(
              hnt: widget.note.title,
              onchange: (value) {
                title = value;
              },
            ),
            const SizedBox(height: 20),
            CustomTextField(
              hnt: widget.note.subTitle,
              maxlines: 5,
              onchange: (value) {
                content = value;
              },
            ),
            const SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
