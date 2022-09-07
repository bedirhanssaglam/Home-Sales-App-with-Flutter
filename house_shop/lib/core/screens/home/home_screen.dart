import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'components/categories.dart';
import 'components/dublex_apartment.dart';
import 'components/multiple_section_title.dart';
import 'components/section_title.dart';
import 'components/title_and_search.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TitleAndSearch(),
                SizedBox(height: 3.h),
                const SectionTitle(title: 'Categories', isSelected: true),
                SizedBox(height: 2.h),
                const Categories(),
                SizedBox(height: 3.h),
                const MultipleSectionTitles(),
                SizedBox(height: 3.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    DublexApartment(
                      imageSrc: 'dublex_home'.toJpg,
                    ),
                    DublexApartment(
                      imageSrc: 'inside_home_1'.toJpg,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
