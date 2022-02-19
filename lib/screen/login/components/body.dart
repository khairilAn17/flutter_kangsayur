import 'package:ecommerce/constant.dart';
import 'package:ecommerce/screen/login/components/login_content.dart';
import 'package:ecommerce/screen/splash/components/body.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: SafeArea(
          child: Stack(
            children: [
              ClipPath(
                clipper: ClipPathClass(),
                child: Container(
                  color: kPrimaryColor,
                  height: getProportionateScreenHeight(320),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: LoginContent(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
