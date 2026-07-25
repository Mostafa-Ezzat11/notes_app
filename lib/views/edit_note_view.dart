import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: const [
            SizedBox(height: 60),
            CustomAppbar(title: 'Edit Note', icon: Icons.check),

            SizedBox(height: 50),
            CustomTextField(hnt: 'Title'),
            SizedBox(height: 20),
            CustomTextField(hnt: 'Content', maxlines: 5),
            SizedBox(height: 70),
            CustomButtom(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
