import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:house_shop/constants.dart';
import 'package:house_shop/core/routes/app_router.dart';
import 'package:sizer/sizer.dart';

import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_form_field.dart';
import 'components/forgot_password.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final portrait = SizerUtil.orientation == Orientation.portrait;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: portrait ? 5.w : 30.w),
            child: Column(
              children: [
                Image.asset(
                  'login_2'.toPng,
                  height: 25.h,
                  width: 40.w,
                  color: kSecondaryColor,
                ),
                const CustomTextFormField(
                  labelText: 'Email',
                  hintText: 'Enter your email',
                  suffixIcon: Icon(Icons.mail, color: Colors.white),
                ),
                SizedBox(height: 4.h),
                const CustomTextFormField(
                  labelText: 'Password',
                  hintText: 'Enter your password',
                  suffixIcon: Icon(Icons.lock, color: Colors.white),
                  isPassword: true,
                ),
                SizedBox(height: 3.h),
                const ForgotPassword(),
                SizedBox(height: portrait ? 10.h : 3.h),
                SizedBox(
                  height: 6.h,
                  width: portrait ? 70.w : 90.w,
                  child: CustomButton(
                    text: 'Login',
                    press: () {
                      context.router.navigate(const MainRoute());
                    },
                  ),
                ),
                if (!portrait) SizedBox(height: 5.h),
              ],
            ),
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
          context.router.navigate(const SplashRoute());
        },
        icon: const Icon(Icons.arrow_back, color: Colors.white),
      ),
    );
  }
}
