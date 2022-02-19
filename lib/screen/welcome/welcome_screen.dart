import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import '../welcome/components/body.dart';

class WelcomeScreen extends StatelessWidget {
  static const nameRoute = "/welcomeScreen";
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
