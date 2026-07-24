import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_appbar.dart';

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
          ],
        ),
      ),
    );
  }
}
