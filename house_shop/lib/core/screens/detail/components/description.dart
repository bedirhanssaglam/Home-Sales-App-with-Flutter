import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../../constants.dart';

class Description extends StatelessWidget {
  const Description({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: const <Widget>[
        DetailSectionTitle(title: 'Description:'),
        SizedBox(height: kSmallPadding),
        Text(
          kDescriptionText,
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}

class DetailSectionTitle extends StatelessWidget {
  const DetailSectionTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kPrimaryColor,
        fontWeight: FontWeight.bold,
        fontSize: 2.h,
      ),
    );
  }
}
