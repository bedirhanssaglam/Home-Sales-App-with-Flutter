import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          maxRadius: 40,
          child: Image.asset('actor_3'.toPng),
        ),
        const SizedBox(width: kBigPadding + 5),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Christian Bale\n',
                style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
              ),
              TextSpan(
                text: 'Actor',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1!
                    .copyWith(color: Colors.grey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
