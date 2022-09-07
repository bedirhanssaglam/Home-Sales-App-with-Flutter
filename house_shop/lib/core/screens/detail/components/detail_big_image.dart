import 'package:flutter/material.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class DetailBigImage extends StatelessWidget {
  const DetailBigImage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 250,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.withOpacity(0.4),
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
        ),
        Positioned(
          top: 5,
          left: 5,
          right: 5,
          bottom: 5,
          child:
              SizedBox(height: 240, child: Image.asset('inside_home_2'.toJpg)),
        ),
      ],
    );
  }
}
