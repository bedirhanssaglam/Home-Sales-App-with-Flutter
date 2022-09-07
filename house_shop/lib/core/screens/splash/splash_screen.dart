import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:house_shop/core/routes/app_router.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';

import 'package:house_shop/constants.dart';

import '../../../provider/screen_controller.dart';
import '../../../widgets/custom_button.dart';
import 'components/splash_content.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> splashData = [
      {
        "text": "Welcome to Homier, Let’s see!",
        "image": "house_cartoon".toPng,
      },
      {
        "text":
            "We help people connect with house \naround United State of America",
        "image": "smart_home".toPng,
      },
      {
        "text": "We show the easy way to rent a home.",
        "image": "login.png".toPng
      },
    ];
    final portrait = SizerUtil.orientation == Orientation.portrait;
    final PageController _pageController = PageController(initialPage: 0);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 3,
                child: Consumer<CurrentPage>(
                  builder: (context, value, child) {
                    final pageView = PageView.builder(
                      controller: _pageController,
                      onPageChanged: (value) {
                        context.read<CurrentPage>().setCurrentPage(value);
                      },
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                        image: splashData[index]["image"],
                        text: splashData[index]['text'],
                      ),
                    );

                    return pageView;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kMediumPadding),
                child: Consumer<CurrentPage>(
                  builder: (context, value, child) {
                    return Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(
                            splashData.length,
                            (index) {
                              return buildPageDots(context, index);
                            },
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: portrait ? 20.h : 10),
              SizedBox(
                width: 85.w,
                height: 6.5.h,
                child: CustomButton(
                  text: 'Get Started',
                  press: () {
                    context.router.navigate(const LoginRoute());
                  },
                ),
              ),
              const SizedBox(height: kSmallPadding),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer buildPageDots(BuildContext context, int index) {
    return AnimatedContainer(
      duration: kDefaultDuration,
      margin: const EdgeInsets.only(right: kSmallPadding / 2),
      height: 1.5.w,
      width: context.watch<CurrentPage>().currentPage == index ? 6.w : 2.w,
      decoration: BoxDecoration(
        color: context.watch<CurrentPage>().currentPage == index
            ? kSecondaryColor
            : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
