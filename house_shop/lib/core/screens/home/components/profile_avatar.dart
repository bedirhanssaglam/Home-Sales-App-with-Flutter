import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'package:sizer/sizer.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key? key,
    required this.imageSrc,
    required this.name,
  }) : super(key: key);

  final String imageSrc, name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 5.h,
          height: 5.h,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
          ),
          child: Image.asset(imageSrc),
        ),
        SizedBox(width: 4.w),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Hi,\n',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: Colors.grey.withOpacity(0.7),
                      fontWeight: FontWeight.w500,
                    ),
              ),
              TextSpan(
                text: name,
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
