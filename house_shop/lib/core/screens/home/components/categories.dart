import 'package:flutter/material.dart';

import '../../../../constants.dart';
import 'package:sizer/sizer.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          CategoriesCard(
            imageSrc: 'house'.toJpg,
            text: 'Buy a Home',
          ),
          CategoriesCard(
            imageSrc: 'villa1'.toPng,
            text: 'Rent a Home',
          ),
          CategoriesCard(
            imageSrc: 'dublex_home'.toJpg,
            text: 'Sell a Home',
          ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    required this.imageSrc,
    this.text,
    this.isGallery = false,
  }) : super(key: key);

  final String imageSrc;
  final String? text;
  final bool isGallery;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Stack(
        children: [
          Container(
            width: 30.w,
            height: 13.h,
            decoration: const BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            child: Image.asset(
              imageSrc,
              fit: BoxFit.cover,
            ),
          ),
          if (!isGallery)
            Positioned(
              bottom: -1,
              left: -7,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
                width: 23.w,
                //height: 30,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Text(
                  text ?? '',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.blueAccent, fontSize: 1.4.h),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
