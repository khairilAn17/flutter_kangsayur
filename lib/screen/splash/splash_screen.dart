import 'package:ecommerce/screen/splash/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  static const nameRoute = "splashScreen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
