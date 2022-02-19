import 'package:ecommerce/constant.dart';
import 'package:ecommerce/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import './carousel_component.dart';

class Body extends StatefulWidget {
  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> categories = [
    {"img": "assets/images/vegetable.png", "title": "Vegetables"},
    {"img": "assets/images/fruits.png", "title": "Fruit"},
    {"img": "assets/images/meat.png", "title": "Meat & Eggs"},
    {"img": "assets/images/drinks.png", "title": "Drink"},
    {"img": "assets/images/vegetable.png", "title": "Bakery"},
    {"img": "assets/images/vegetable.png", "title": "Bakery"},
    {"img": "assets/images/vegetable.png", "title": "Bakery"},
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Stack(
        children: [
          ClipPath(
            clipper: ClipPathClass(),
            child: Container(
              color: kPrimaryColor,
              height: getProportionateScreenHeight(230),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Kangsayur",
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                        height: 27,
                        width: 30,
                        child: SvgPicture.asset("assets/icons/icon-1.svg"))
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: SizeConfig.screenWidth * 0.6,
                      height: 39,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            hintText: "Search for fruit",
                            prefixIcon: Icon(Icons.search),
                            iconColor: Colors.grey,
                            contentPadding: EdgeInsets.symmetric(
                                horizontal: getProportionateScreenWidth(20),
                                vertical: getProportionateScreenHeight(5))),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(60),
                      focusColor: Colors.grey,
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                        height: getProportionateScreenHeight(40),
                        width: getProportionateScreenWidth(40),
                        child: SvgPicture.asset("assets/icons/msg-icon.svg"),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      focusColor: Colors.grey,
                      child: Container(
                        padding: EdgeInsets.all(getProportionateScreenWidth(2)),
                        height: getProportionateScreenHeight(40),
                        width: getProportionateScreenWidth(40),
                        child: SvgPicture.asset("assets/icons/bell-icon.svg"),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 250,
                ),
                Text(
                  "Categories",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ...List.generate(
                            categories.length,
                            (index) => CategoriesContent(
                                img: categories[index]["img"].toString(),
                                title: categories[index]["title"].toString())),
                      ]),
                ),
                Divider(),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Special Deal",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      children: [
                        Text(
                          "see more",
                          style: TextStyle(fontSize: 16, color: kPrimaryColor),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: kPrimaryColor,
                          size: 18,
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        height: 128,
                        width: 128,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/images/deal-1.png"),
                      ),
                      Container(
                        height: 128,
                        width: 128,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/images/deal-2.png"),
                      ),
                      Container(
                        height: 128,
                        width: 128,
                        margin: EdgeInsets.only(right: 16),
                        decoration: BoxDecoration(
                            color: kPrimaryColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Image.asset("assets/images/deal-1.png"),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          CarouselComponent(),
        ],
      ),
    ));
  }
}

class CategoriesContent extends StatelessWidget {
  const CategoriesContent({
    Key? key,
    required this.img,
    required this.title,
  }) : super(key: key);
  final String img;
  final String title;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(76),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 6.0),
            height: 60,
            decoration: BoxDecoration(
                color: kPrimaryColor.withOpacity(.2),
                borderRadius: BorderRadius.circular(10.0)),
            child: Image.asset(img),
          ),
          Text(
            title,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}

class ClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height - 50);

    var firstControlPoint = Offset(size.width / 2, size.height);
    var firstPoint = Offset(size.width, size.height - 50);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstPoint.dx, firstPoint.dy);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
