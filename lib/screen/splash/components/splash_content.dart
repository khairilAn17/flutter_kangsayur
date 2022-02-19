import 'package:ecommerce/screen/welcome/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constant.dart';
import '../../../size_config.dart';

class SplashContent extends StatelessWidget {
  const SplashContent({
    Key? key,
    this.msg,
    this.image,
    this.end,
  }) : super(key: key);
  final String? msg, image;
  final bool? end;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Kangsayur",
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'MontserratAlternat',
                    fontSize: 28.4,
                    fontWeight: FontWeight.w600),
              ),
              SvgPicture.asset("assets/icons/icon-1.svg")
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/images/splash_1.png"),
                Image.asset("assets/images/splash_2.png")
              ],
            ),
          ),
          const SizedBox(
            height: 56,
          ),
          RichText(
              textAlign: TextAlign.center,
              text: TextSpan(children: [
                TextSpan(text: msg, style: TextStyle(fontSize: 18)),
                TextSpan(
                    text: " Grocery Shopping ",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                TextSpan(
                    text: "every you needed", style: TextStyle(fontSize: 18))
              ])),
          SizedBox(
            height: 25,
          ),
          end == true
              ? SizedBox(
                  width: double.infinity,
                  height: getProportionateScreenHeight(56),
                  child: TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(kSecondaryColor),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)))),
                      onPressed: () {
                        Navigator.of(context)
                            .pushReplacementNamed(WelcomeScreen.nameRoute);
                      },
                      child: const Text(
                        "Get Started",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )),
                )
              : Container(),
        ],
      ),
    );
  }
}
