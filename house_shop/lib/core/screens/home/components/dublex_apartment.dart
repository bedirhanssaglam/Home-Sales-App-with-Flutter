import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:house_shop/core/routes/app_router.dart';
import 'package:sizer/sizer.dart';

import '../../detail/detail_screen.dart';
import 'apartment_location.dart';
import 'dublex_apartment_title.dart';
import 'house_features.dart';
import 'rating_and_reviews.dart';

class DublexApartment extends StatelessWidget {
  const DublexApartment({
    Key? key,
    required this.imageSrc,
  }) : super(key: key);

  final String imageSrc;

  @override
  Widget build(BuildContext context) {
    SizedBox iconAndTextPadding = SizedBox(width: 1.2.w);
    return GestureDetector(
      onTap: () {
        context.router.navigate(const DetailRoute());
      },
      child: Stack(
        children: [
          Container(
            height: 26.h,
            width: 43.w,
            decoration: const BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            left: 0,
            child: Container(
              height: 10.7.h,
              width: 43.w,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Image.asset(
                imageSrc,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 11.3.h,
            left: 2.w,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DublexApartmentTitle(color: Colors.white),
                SizedBox(height: 1.h),
                const ApartmentLocation(color: Colors.white),
                SizedBox(height: 1.h),
                RatingAndReviews(
                  iconAndTextPadding: iconAndTextPadding,
                  color: Colors.white,
                ),
                SizedBox(height: 1.h),
                HouseFeatures(iconAndTextPadding: iconAndTextPadding),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
