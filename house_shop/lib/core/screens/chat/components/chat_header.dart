import 'package:flutter/material.dart';

import '../../../../constants.dart';

class ChatHeader extends StatelessWidget {
  const ChatHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
      child: Row(
        children: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor.withOpacity(0.3),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Recent Messages',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
          const SizedBox(width: kMediumPadding),
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: kPrimaryColor.withOpacity(0.05),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            onPressed: () {},
            child: const Text(
              'Active',
              style: TextStyle(color: kPrimaryColor),
            ),
          ),
        ],
      ),
    );
  }
}
