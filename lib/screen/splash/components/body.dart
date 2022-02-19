import 'package:ecommerce/constant.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './splash_content.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, dynamic>> splashData = [
    {
      "msg": "Hallo this is",
      "image": "assets/images/splash_1.png",
      "end": false
    },
    {
      "msg": "can't wait for this ",
      "image": "assets/images/splash_1.png",
      "end": false
    },
    {
      "msg": "Kangsayur is solution for",
      "image": "assets/images/splash_1.png",
      "end": true
    },
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: kPrimaryColor));
    return SizedBox(
      width: double.infinity,
      child: Container(
        color: kSecondaryColor,
        child: SafeArea(
          child: Stack(children: [
            ClipPath(
              clipper: ClipPathClass(),
              child: Container(
                color: kPrimaryColor,
                height: getProportionateScreenHeight(320),
              ),
            ),
            Column(
              children: [
                Expanded(
                    flex: 4,
                    child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          currentPage = value;
                        });
                      },
                      itemCount: splashData.length,
                      itemBuilder: (context, index) => SplashContent(
                        msg: splashData[index]["msg"],
                        image: splashData[index]["image"],
                        end: splashData[index]["end"],
                      ),
                    )),
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                          splashData.length,
                          (index) =>
                              buildDot(index: index, currentPage: currentPage)),
                    )
                  ],
                ))
              ],
            ),
          ]),
        ),
      ),
    );
  }
}

Container buildDot({int? index, int? currentPage}) {
  return Container(
    margin: EdgeInsets.only(right: 8),
    height: 8,
    width: 8,
    decoration: BoxDecoration(
        color: currentPage == index ? Colors.white : Colors.grey,
        borderRadius: BorderRadius.circular(4)),
  );
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 30);

    var firstControlPoint = Offset(size.width / 5, size.height);
    var firstPoint = Offset(size.width / 3, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);

    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 150);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);

    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) => false;
}
