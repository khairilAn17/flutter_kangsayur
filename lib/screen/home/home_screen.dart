import 'package:ecommerce/constant.dart';
import 'package:flutter/material.dart';
import './componenst/body.dart';

class HomeScreen extends StatelessWidget {
  static const nameRoute = "/homeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Body(),
        bottomNavigationBar: Container(
          height: 67,
          padding: EdgeInsets.symmetric(vertical: 15),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, -20),
                    blurRadius: 20,
                    color: Color(0xFF0c1818).withOpacity(0.15))
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40))),
          child: SafeArea(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Icon(
                  Icons.home,
                  color: kSecondaryColor,
                  size: 35,
                ),
                Icon(
                  Icons.favorite,
                  color: Colors.grey,
                  size: 35,
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.grey,
                  size: 35,
                ),
                Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 35,
                ),
              ],
            ),
          ),
        ));
  }
}
