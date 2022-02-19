import 'package:ecommerce/constant.dart';
import 'package:ecommerce/screen/splash/components/body.dart';
import 'package:ecommerce/screen/welcome/components/welcome_content.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
          child: Stack(children: [
        ClipPath(
          clipper: ClipPathClass(),
          child: Container(
            color: kPrimaryColor,
            height: getProportionateScreenHeight(320),
          ),
        ),
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(10)),
          child: const WelcomeContent(),
        ),
      ])),
    );
  }
}
