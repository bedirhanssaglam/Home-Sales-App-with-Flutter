import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:house_shop/constants.dart';
import 'package:house_shop/core/routes/app_router.dart';
import 'package:house_shop/core/screens/main/main_screen.dart';

import '../../../widgets/custom_button.dart';
import '../home/components/apartment_location.dart';
import '../home/components/categories.dart';
import '../home/components/dublex_apartment_title.dart';
import '../home/components/rating_and_reviews.dart';
import 'components/description.dart';
import 'components/detail_big_image.dart';
import 'package:sizer/sizer.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizedBox iconAndTextPadding = SizedBox(width: 1.2.w);
    return Scaffold(
      appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DetailBigImage(),
              const SizedBox(height: kSmallPadding),
              const DublexApartmentTitle(color: kPrimaryColor),
              const SizedBox(height: kSmallPadding),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const ApartmentLocation(color: Colors.grey),
                  RatingAndReviews(
                    iconAndTextPadding: iconAndTextPadding,
                    color: Colors.grey,
                  ),
                ],
              ),
              const SizedBox(height: kSmallPadding),
              const Description(),
              const SizedBox(height: kSmallPadding),
              const GalleryPhotos(),
              const SizedBox(height: kMediumPadding),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
                height: 60,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: kPrimaryColor.withOpacity(0.1),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                              text: '\$1,500,000\n',
                              style: Theme.of(context)
                                  .textTheme
                                  .subtitle2!
                                  .copyWith(
                                    color: kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  )),
                          TextSpan(
                            text: 'Total Price',
                            style:
                                Theme.of(context).textTheme.subtitle2!.copyWith(
                                      color: kPrimaryColor.withOpacity(0.5),
                                    ),
                          ),
                        ],
                      ),
                    ),
                    CustomButton(
                      text: 'Book Now',
                      press: () {},
                    ),
                  ],
                ),
              ),
              const SizedBox(height: kMediumPadding),
            ],
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {
          context.router.navigate(const MainRoute());
        },
        icon: const Icon(Icons.arrow_back, color: kPrimaryColor),
      ),
      actions: [
        CircleAvatar(
          maxRadius: 17,
          child: Image.asset('actor_3'.toPng),
        ),
        const SizedBox(width: 15),
      ],
    );
  }
}

class GalleryPhotos extends StatelessWidget {
  const GalleryPhotos({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DetailSectionTitle(title: 'Gallery'),
        const SizedBox(height: kMediumPadding - 5),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CategoriesCard(
                imageSrc: 'dublex_home'.toJpg,
                isGallery: true,
              ),
              CategoriesCard(
                imageSrc: 'inside_home_1'.toJpg,
                isGallery: true,
              ),
              CategoriesCard(
                imageSrc: 'inside_home_2'.toJpg,
                isGallery: true,
              )
            ],
          ),
        ),
      ],
    );
  }
}
