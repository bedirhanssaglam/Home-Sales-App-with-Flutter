// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashScreen());
    },
    MainRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MainScreen());
    },
    ChatRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ChatScreen());
    },
    DetailRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const DetailScreen());
    },
    HomeRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const HomeScreen());
    },
    LoginRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginScreen());
    },
    ProfileRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ProfileScreen());
    },
    ReservationsRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const ReservationsScreen());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashRoute.name, path: '/'),
        RouteConfig(MainRoute.name, path: 'main_screen'),
        RouteConfig(ChatRoute.name, path: 'chat_screen'),
        RouteConfig(DetailRoute.name, path: 'detail_screen'),
        RouteConfig(HomeRoute.name, path: 'home_screen'),
        RouteConfig(LoginRoute.name, path: 'login_screen'),
        RouteConfig(ProfileRoute.name, path: 'profile_screen'),
        RouteConfig(ReservationsRoute.name, path: 'reservations_screen')
      ];
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [MainScreen]
class MainRoute extends PageRouteInfo<void> {
  const MainRoute() : super(MainRoute.name, path: 'main_screen');

  static const String name = 'MainRoute';
}

/// generated route for
/// [ChatScreen]
class ChatRoute extends PageRouteInfo<void> {
  const ChatRoute() : super(ChatRoute.name, path: 'chat_screen');

  static const String name = 'ChatRoute';
}

/// generated route for
/// [DetailScreen]
class DetailRoute extends PageRouteInfo<void> {
  const DetailRoute() : super(DetailRoute.name, path: 'detail_screen');

  static const String name = 'DetailRoute';
}

/// generated route for
/// [HomeScreen]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'home_screen');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login_screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [ProfileScreen]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: 'profile_screen');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [ReservationsScreen]
class ReservationsRoute extends PageRouteInfo<void> {
  const ReservationsRoute()
      : super(ReservationsRoute.name, path: 'reservations_screen');

  static const String name = 'ReservationsRoute';
}
