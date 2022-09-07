import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);

  final String? text, image;

  @override
  Widget build(BuildContext context) {
    final portrait = SizerUtil.orientation == Orientation.portrait;
    return Column(
      children: <Widget>[
        Container(
          height: portrait ? 50.h : 30.h,
          width: portrait ? double.infinity : 100.w,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Image.asset(
            image!,
            height: portrait ? 40.h : 25.h,
            width: portrait ? 50.w : 40.w,
            fit: BoxFit.cover,
          ),
        ),
        if (portrait)
          Container(
            height: 3.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(30),
              ),
            ),
          ),
        SizedBox(height: portrait ? 20 : 5),
        Text(
          text!,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white, fontSize: portrait ? 17 : 15),
        ),
      ],
    );
  }
}
