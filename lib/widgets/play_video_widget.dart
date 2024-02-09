//Widgets dependent on deviceWidth and deviceHeight...
  import 'package:flutter/material.dart';

Widget videoSection(double deviceHeight, double deviceWidth) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, left: 2.0, right: 2.0),
      child: Container(
        height: deviceHeight * 0.265,
        width: deviceWidth * 0.9,
        decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/food.png'),
            ),
            borderRadius: BorderRadius.circular(14.0)),
      ),
    );
  }

  Widget playButton(double deviceHeight, double deviceWidth) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: deviceWidth * 0.15,
        width: deviceWidth * 0.15,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/images/image3.png'))),
      ),
    );
  }

  Widget playVideo(double deviceHeight, double deviceWidth) {
    return Stack(
      children: [
        Positioned(child: videoSection(deviceHeight, deviceWidth)),
        Positioned(
            top: deviceHeight * 0.115,
            left: deviceWidth * 0.360,
            child: playButton(deviceHeight, deviceWidth))
      ],
    );
  }

