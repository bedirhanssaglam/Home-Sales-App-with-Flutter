import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sizer/sizer.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class RatingAndReviews extends StatelessWidget {
  const RatingAndReviews({
    Key? key,
    required this.iconAndTextPadding,
    required this.color,
  }) : super(key: key);

  final SizedBox iconAndTextPadding;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          'star_small'.toSvg,
          height: 1.8.h,
        ),
        iconAndTextPadding,
        Text(
          '4.8',
          style: TextStyle(color: color),
        ),
        iconAndTextPadding,
        Text(
          '(268 Reviews)',
          style: TextStyle(color: color),
        ),
      ],
    );
  }
}
