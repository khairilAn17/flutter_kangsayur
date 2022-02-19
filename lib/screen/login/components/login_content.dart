import 'package:ecommerce/screen/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/size_config.dart';
import 'package:ecommerce/constant.dart';

class LoginContent extends StatefulWidget {
  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  bool _passwordVisibility = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 18,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Login",
              style: TextStyle(
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Image.asset("assets/images/splash_2.png"),
            )
          ],
        ),
        Text(
          "email",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(style: BorderStyle.none, width: 0)),
              hintText: "yourmail@mail.com",
              hintStyle: TextStyle(color: Colors.grey),
              filled: true,
              fillColor: Color(0xFFE0E0E0)),
        ),
        SizedBox(
          height: 20,
        ),
        Text(
          "password",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 10,
        ),
        TextField(
          obscureText: !_passwordVisibility,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderSide: BorderSide(style: BorderStyle.none, width: 0),
                  borderRadius: BorderRadius.circular(10)),
              fillColor: Color(0xFFE0E0E0),
              filled: true,
              hintText: "password",
              hintStyle: TextStyle(color: Colors.grey),
              suffixIcon: IconButton(
                icon: Icon(_passwordVisibility
                    ? Icons.visibility
                    : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _passwordVisibility = !_passwordVisibility;
                  });
                },
              )),
        ),
        SizedBox(
          height: 8,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              "forgot password",
              style: TextStyle(color: kPrimaryColor, fontSize: 15),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
        SizedBox(
            width: double.infinity,
            height: getProportionateScreenHeight(56),
            child: TextButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10))),
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(kPrimaryColor)),
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(HomeScreen.nameRoute);
                },
                child: const Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ))),
        SizedBox(
          height: 17,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "don't have an account? ",
              style: TextStyle(color: kPrimaryColor, fontSize: 16),
            ),
            Text(
              "Register",
              style: TextStyle(
                  color: kPrimaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            )
          ],
        )
      ],
    );
  }
}
