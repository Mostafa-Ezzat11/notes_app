import 'package:flutter/material.dart';
import 'package:notes_app/models/note_model.dart';
import 'package:notes_app/widgets/colors_listview.dart';

class EditColorsListView extends StatefulWidget {
  const EditColorsListView({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditColorsListView> createState() =>
      _EditColorsListViewState();
}

class _EditColorsListViewState extends State<EditColorsListView> {
  List<Color> colors = const [
    Color(0xffef476f),
    Color(0xffffd166),
    Color(0xff06d6a0),
    Color(0xff118ab2),
    Color(0xff073b4c),
  ];
  late int current;

  @override
  void initState() {
    current = colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: colors.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: GestureDetector(
              onTap: () {
                current = index;
                widget.note.color = colors[index].toARGB32();
                setState(() {});
              },
              child: ColorItem(
                isActive: current == index,
                color: colors[index],
              ),
            ),
          );
        },
      ),
    );
  }
}
