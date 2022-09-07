import 'package:flutter/material.dart';
import 'package:house_shop/constants.dart';
import 'package:house_shop/core/extensions/image_path.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/custom_button.dart';

class ReservationsScreen extends StatelessWidget {
  const ReservationsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(height: 2.2.h),
                Text(
                  "You don't have a reservation planned!",
                  style: TextStyle(
                    color: kPrimaryColor.withOpacity(0.8),
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.h),
                Image.asset('search_home'.toPng),
                const SizedBox(height: kMediumPadding * 5),
                SizedBox(
                  width: 200,
                  height: 50,
                  child: CustomButton(
                    text: 'Search Houses',
                    press: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(Icons.menu, color: kPrimaryColor),
      ),
      centerTitle: true,
      title: const Text('Your Reservations',
          style: TextStyle(color: kPrimaryColor)),
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.search, color: kPrimaryColor),
        ),
      ],
    );
  }
}
