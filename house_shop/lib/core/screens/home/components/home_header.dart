import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'profile_avatar.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ProfileAvatar(
          imageSrc: 'actor_3'.toPng,
          name: 'Christian Bale',
        ),
        IconButton(
          onPressed: () {},
          icon: SvgPicture.asset('notification'.toSvg),
        ),
      ],
    );
  }
}
