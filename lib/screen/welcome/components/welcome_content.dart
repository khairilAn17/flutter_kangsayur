import 'package:ecommerce/constant.dart';
import 'package:ecommerce/screen/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter_svg/svg.dart';
import '../../../size_config.dart';

class WelcomeContent extends StatelessWidget {
  const WelcomeContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SizedBox(
          height: getProportionateScreenHeight(100),
        ),
        Image.asset("assets/images/welcome_1.png"),
        const SizedBox(
          height: 36,
        ),
        SizedBox(
          width: double.infinity,
          height: getProportionateScreenHeight(56),
          child: TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed(LoginScreen.nameRoute);
              },
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0))),
                foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                backgroundColor:
                    MaterialStateProperty.all<Color>(kPrimaryColor),
              ),
              child: const Text(
                "Login",
                style: TextStyle(fontSize: 18),
              )),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          height: getProportionateScreenHeight(56),
          child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                side: BorderSide(width: 1.0, color: kPrimaryColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              child: const Text(
                "Register",
                style: TextStyle(
                    fontSize: 18,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.only(right: 20),
                  child: const Divider(
                    color: Colors.black,
                    thickness: .9,
                  ),
                ),
              ),
              const Text(
                "Or login with",
                style: TextStyle(fontSize: 18),
              ),
              Expanded(
                  child: Container(
                margin: EdgeInsets.only(left: 20),
                child: const Divider(
                  color: Colors.black,
                  thickness: .9,
                ),
              ))
            ],
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: double.infinity,
          height: getProportionateScreenHeight(56),
          child: OutlinedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/google-icon.svg"),
                const Text(
                  "Google",
                  style: TextStyle(fontSize: 18, color: Colors.black87),
                ),
                Container()
              ],
            ),
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        SizedBox(
          width: double.infinity,
          height: getProportionateScreenHeight(56),
          child: OutlinedButton(
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset("assets/icons/facebook-icon.svg"),
                const Text(
                  "Facebook",
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
                Container()
              ],
            ),
            style: OutlinedButton.styleFrom(
                side: const BorderSide(
                  width: 1,
                  color: Colors.grey,
                ),
                backgroundColor: const Color(0xFF2D9CDB),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10))),
          ),
        ),
      ],
    );
  }
}
