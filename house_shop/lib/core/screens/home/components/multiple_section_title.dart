import 'package:flutter/material.dart';

import 'section_title.dart';
import 'package:sizer/sizer.dart';

class MultipleSectionTitles extends StatelessWidget {
  const MultipleSectionTitles({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SectionTitle(
          title: 'Popular',
          isSelected: true,
        ),
        SizedBox(width: 4.w),
        const SectionTitle(
          title: 'Recommended',
        ),
        SizedBox(width: 4.w),
        const SectionTitle(
          title: 'Nearest',
        ),
      ],
    );
  }
}
