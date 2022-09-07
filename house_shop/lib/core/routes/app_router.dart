import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:house_shop/core/screens/chat/chat_screen.dart';
import 'package:house_shop/core/screens/detail/detail_screen.dart';
import 'package:house_shop/core/screens/home/home_screen.dart';
import 'package:house_shop/core/screens/login/login_screen.dart';
import 'package:house_shop/core/screens/main/main_screen.dart';
import 'package:house_shop/core/screens/profile/profile_screen.dart';
import 'package:house_shop/core/screens/reservations/reservations_screen.dart';
import 'package:house_shop/core/screens/splash/splash_screen.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|Screen|View,Route',
  routes: <AutoRoute>[
    AutoRoute(path: "/", page: SplashScreen, initial: true),
    AutoRoute(path: 'main_screen', page: MainScreen),
    AutoRoute(path: 'chat_screen', page: ChatScreen),
    AutoRoute(path: 'detail_screen', page: DetailScreen),
    AutoRoute(path: 'home_screen', page: HomeScreen),
    AutoRoute(path: 'login_screen', page: LoginScreen),
    AutoRoute(path: 'profile_screen', page: ProfileScreen),
    AutoRoute(path: 'reservations_screen', page: ReservationsScreen),
  ],
)
//

class AppRouter extends _$AppRouter {}
