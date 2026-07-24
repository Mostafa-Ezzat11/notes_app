import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_buttom.dart';
import 'package:notes_app/widgets/custom_textfield.dart';

class AddNoteBottomsheet extends StatelessWidget {
  const AddNoteBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            CustomTextField(hnt: 'Title'),
            SizedBox(height: 20),
            CustomTextField(hnt: 'content', maxlines: 5),
            SizedBox(height: 70),
            CustomButtom(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
