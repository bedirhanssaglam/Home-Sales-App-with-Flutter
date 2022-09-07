import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:sizer/sizer.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class HouseFeatures extends StatelessWidget {
  const HouseFeatures({
    Key? key,
    required this.iconAndTextPadding,
  }) : super(key: key);

  final SizedBox iconAndTextPadding;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.bed, size: 2.1.h, color: Colors.black),
        iconAndTextPadding,
        const Text(
          '4',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 4.w),
        Icon(Icons.bathroom_outlined, size: 2.1.h),
        iconAndTextPadding,
        const Text(
          '3',
          style: TextStyle(color: Colors.white),
        ),
        SizedBox(width: 4.w),
        SvgPicture.asset(
          'address'.toSvg,
          color: Colors.black.withOpacity(0.8),
          height: 15,
        ),
        iconAndTextPadding,
        const Text(
          '100m',
          style: TextStyle(color: Colors.white),
        ),
      ],
    );
  }
}
