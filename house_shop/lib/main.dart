import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:house_shop/core/routes/app_router.dart';
import 'package:house_shop/provider/screen_controller.dart';
import 'package:sizer/sizer.dart';

import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CurrentPage(),
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
            routeInformationParser: _appRouter.defaultRouteParser(),
            routerDelegate: _appRouter.delegate(),
            debugShowCheckedModeBanner: false,
            title: 'House Shop',
            theme: ThemeData(
              textTheme:
                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
            ),
          );
        },
      ),
    );
  }
}

//MaterialApp(
//            debugShowCheckedModeBanner: false,
//            title: 'House Shop',
//            theme: ThemeData(
//              textTheme:
//                  GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
 //           ),
 //           home: const SplashScreen(),
 //         )
