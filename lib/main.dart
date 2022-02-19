import 'package:ecommerce/constant.dart';
import 'package:ecommerce/screen/home/home_screen.dart';
import 'package:ecommerce/screen/login/login_screen.dart';
import 'package:ecommerce/screen/splash/splash_screen.dart';
import 'package:ecommerce/screen/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: kPrimaryColor, backgroundColor: kBackgroundLighColor),
      home: SplashScreen(),
      initialRoute: SplashScreen.nameRoute,
      routes: {
        SplashScreen.nameRoute: (context) => SplashScreen(),
        WelcomeScreen.nameRoute: (context) => WelcomeScreen(),
        LoginScreen.nameRoute: (context) => LoginScreen(),
        HomeScreen.nameRoute: (context) => HomeScreen(),
      },
    );
  }
}
