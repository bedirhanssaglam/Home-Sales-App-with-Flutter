import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../constants.dart';
import 'package:sizer/sizer.dart';
import 'package:house_shop/core/extensions/image_path.dart';

import 'home_header.dart';

class TitleAndSearch extends StatelessWidget {
  const TitleAndSearch({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 1.h),
        const HomeHeader(),
        SizedBox(height: 4.h),
        RichText(
          text: TextSpan(
            children: [
              TextSpan(
                text: 'Find\n',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
              ),
              TextSpan(
                text: 'best place ',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kPrimaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
              ),
              TextSpan(
                text: 'nearby',
                style: Theme.of(context).textTheme.subtitle2!.copyWith(
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
              ),
            ],
          ),
        ),
        SizedBox(height: 2.h),
        Row(
          children: [
            const SearchField(),
            SizedBox(width: 7.5.w),
            Container(
              width: 12.3.w,
              height: 6.3.h,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.all(Radius.circular(10)),
              ),
              child: Padding(
                padding: EdgeInsets.all(1.5.h),
                child: SvgPicture.asset('Settings_third'.toSvg),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 6.h,
      width: 70.w,
      child: Form(
        child: TextFormField(
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 1.h),
            hintText: 'Search your...',
            prefixIcon: Icon(Icons.search, size: 3.h),
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
        ),
      ),
    );
  }
}
