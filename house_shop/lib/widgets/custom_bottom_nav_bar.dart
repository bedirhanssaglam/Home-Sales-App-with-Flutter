import 'package:flutter/material.dart';

import '../constants.dart';
import '../provider/screen_controller.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.pageInfo,
  }) : super(key: key);

  final CurrentPage pageInfo;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      selectedItemColor: kPrimaryColor,
      currentIndex: pageInfo.bottomPage,
      onTap: (index) {
        pageInfo.bottomPage = index;
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: "Chat",
        ),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Cart"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage('assets/images/actor_3.png'),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
