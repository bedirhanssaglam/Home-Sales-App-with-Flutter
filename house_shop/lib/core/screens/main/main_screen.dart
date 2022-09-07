import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../constants.dart';
import '../../../provider/screen_controller.dart';
import '../chat/chat_screen.dart';
import '../home/home_screen.dart';
import '../profile/profile_screen.dart';
import '../reservations/reservations_screen.dart';
import 'package:house_shop/core/extensions/image_path.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var currentTab = [
    const HomeScreen(),
    const ChatScreen(),
    const ReservationsScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    final pageInfo = context.read<CurrentPage>();
    return Consumer<CurrentPage>(
      builder: (context, value, child) => Scaffold(
        body: currentTab[pageInfo.bottomPage],
        bottomNavigationBar: CustomBottomNavBar(pageInfo: pageInfo),
      ),
    );
  }
}

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
      items: [
        const BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: "Home",
        ),
        const BottomNavigationBarItem(
          icon: Icon(Icons.chat_bubble_outline),
          label: "Chat",
        ),
        const BottomNavigationBarItem(
            icon: Icon(Icons.book_online_outlined), label: "Reservations"),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            radius: 14,
            backgroundImage: AssetImage('actor_3'.toPng),
          ),
          label: "Profile",
        ),
      ],
    );
  }
}
