import 'package:flutter/material.dart';
import 'package:notes_app/widgets/custom_icon.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({
    super.key,
    required this.title,
    required this.icon,
  });
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: const TextStyle(fontSize: 25)),
        CustomIcon(icon: icon),
      ],
    );
  }
}
