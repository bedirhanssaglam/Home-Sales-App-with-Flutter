import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key,
    required this.title,
    this.isSelected = false,
  }) : super(key: key);

  final String title;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: isSelected ? Colors.black : Colors.grey,
        decoration: isSelected ? TextDecoration.underline : null,
        fontWeight: FontWeight.bold,
        fontSize: 2.h,
      ),
    );
  }
}
