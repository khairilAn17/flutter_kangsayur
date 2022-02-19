import 'package:ecommerce/constant.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../../size_config.dart';

class CarouselComponent extends StatefulWidget {
  const CarouselComponent({
    Key? key,
  }) : super(key: key);

  @override
  State<CarouselComponent> createState() => _CarouselComponentState();
}

class _CarouselComponentState extends State<CarouselComponent> {
  int _current = 0;
  final CarouselController _controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 120.0),
      child: Column(
        children: [
          CarouselSlider(
              carouselController: _controller,
              items: [1, 2, 3, 4, 5].map((e) {
                return Builder(builder: (BuildContext contex) {
                  return Container(
                    width: getProportionateScreenWidth(330),
                    // color: Colors.blueAccent,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [Color(0xFF60DEB1), Color(0xFF0EB177)])),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/card-1.png",
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                });
              }).toList(),
              options: CarouselOptions(
                height: 156,
                viewportFraction: .909,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              )),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [0, 1, 2, 4, 5].map((entry) {
                return GestureDetector(
                  onTap: () => _controller.animateToPage(entry),
                  child: Container(
                    width: entry == _current ? 30.0 : 10.0,
                    height: 10.0,
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: (Theme.of(context).brightness == Brightness.dark
                                ? Colors.white
                                : kPrimaryColor)
                            .withOpacity(_current == entry ? 0.9 : 0.4)),
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
