import 'package:ecommerce/constant.dart';
import 'package:flutter/material.dart';
import './components/body.dart';

class LoginScreen extends StatelessWidget {
  static const nameRoute = "/loginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kPrimaryColor,
      ),
      body: Body(),
    );
  }
}
