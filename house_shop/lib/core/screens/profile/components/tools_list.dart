import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:house_shop/core/routes/app_router.dart';

import '../../../../constants.dart';

class ToolsList extends StatelessWidget {
  const ToolsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ProfileTools(
          iconData: Icons.favorite_outline,
          text: 'Your Favorites',
        ),
        const ProfileTools(
          iconData: Icons.payment,
          text: 'Payment',
        ),
        const ProfileTools(
          iconData: Icons.mobile_friendly,
          text: 'Tell Your Friend',
        ),
        const ProfileTools(
          iconData: Icons.discount,
          text: 'Promotions',
        ),
        const ProfileTools(
          iconData: Icons.settings,
          text: 'Settings',
        ),
        Divider(
          height: 1,
          color: Colors.black.withOpacity(0.6),
        ),
        const SizedBox(height: 5),
        const ProfileTools(
          iconData: Icons.logout_outlined,
          text: 'Log Out',
          isLogOut: true,
        ),
      ],
    );
  }
}

class ProfileTools extends StatelessWidget {
  const ProfileTools({
    Key? key,
    required this.iconData,
    required this.text,
    this.isLogOut = false,
  }) : super(key: key);

  final IconData iconData;
  final String text;
  final bool isLogOut;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (isLogOut) {
          showDialog<String>(
            context: context,
            builder: (BuildContext context) => buildAlertDialog(context),
          );
        }
      },
      child: SizedBox(
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            Icon(
              iconData,
              color: isLogOut ? Colors.red : Colors.blueAccent,
              size: 24,
            ),
            const SizedBox(width: kMediumPadding),
            Text(
              text,
              style: TextStyle(
                  fontSize: 17,
                  color: isLogOut ? Colors.red : kPrimaryColor,
                  fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    );
  }

  AlertDialog buildAlertDialog(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Warning',
        style: TextStyle(color: kSecondaryColor),
      ),
      content: const Text(
        'Are you sure you want to log out?',
        style: TextStyle(color: kPrimaryColor),
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () => context.router.navigate(const ProfileRoute()),
          child: const Text(
            'Cancel',
            style: TextStyle(color: kSecondaryColor),
          ),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: kSecondaryColor,
          ),
          onPressed: () => context.router.navigate(const SplashRoute()),
          child: const Text(
            'Yes',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
