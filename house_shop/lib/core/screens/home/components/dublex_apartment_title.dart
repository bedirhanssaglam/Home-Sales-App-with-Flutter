import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class DublexApartmentTitle extends StatelessWidget {
  const DublexApartmentTitle({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Dublex Apartment',
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: 2.h,
      ),
    );
  }
}
