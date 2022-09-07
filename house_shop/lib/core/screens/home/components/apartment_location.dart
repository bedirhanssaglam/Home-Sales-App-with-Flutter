import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class ApartmentLocation extends StatelessWidget {
  const ApartmentLocation({
    Key? key,
    required this.color,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Stockton, New Hampshire',
      style: TextStyle(
        color: color,
        fontSize: 1.5.h,
      ),
    );
  }
}
