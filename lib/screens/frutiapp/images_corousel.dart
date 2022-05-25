import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  "images/manzana.png",
  "images/mango2.png",
  "images/platano.png",
];

class CarouseWithIndicatorDemo extends StatefulWidget {
  CarouseWithIndicatorDemo({Key? key}) : super(key: key);

  @override
  State<CarouseWithIndicatorDemo> createState() =>
      _CarouseWithIndicatorDemoState();
}

class _CarouseWithIndicatorDemoState extends State<CarouseWithIndicatorDemo> {
  int _actual = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: imgList
              .map(
                (item) => Container(
                  child: Center(
                    child: Image.asset(
                      item.toString(),
                    ),
                  ),
                ),
              )
              .toList(),
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 2.0,
            onPageChanged: (index, reason) {
              setState(
                () {
                  _actual = index;
                },
              );
            },
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.map(
            (url) {
              int index = imgList.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _actual == index
                      ? Color.fromRGBO(0, 0, 0, 0.9)
                      : Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            },
          ).toList(),
        ),
      ],
    );
  }
}
