import 'package:flutter/material.dart';
import 'package:house_shop/constants.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: Colors.black.withOpacity(0.7),
        ),
        const SizedBox(width: kSmallPadding),
        Text(
          text,
          style: TextStyle(
            color: Colors.black.withOpacity(0.7),
          ),
        ),
      ],
    );
  }
}
