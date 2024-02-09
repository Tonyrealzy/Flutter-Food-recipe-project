import 'package:flutter/material.dart';
import 'package:project/widgets/header.dart';
import 'package:project/widgets/top_button.dart';

// ignore: must_be_immutable
class MyHomePage extends StatelessWidget {
  late double deviceHeight, deviceWidth;
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    deviceHeight = MediaQuery.of(context).size.height;
    deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(actions: [topButtonSection()]),
      body: Center(
          child: (Container(
              height: deviceHeight,
              width: deviceWidth,
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.05,
                  vertical: deviceHeight * 0.006),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  headerSection(),
                  const SizedBox(
                    height: 10.0,
                  ),
                  playVideo(), 
                ],
              )
              // children: [headerSection(), videoSection()],

              // Center(
              // child: playVideo(),
              ))),
    );
  }

  Widget videoSection() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 24.0, left: 2.0, bottom: 8.0, right: 2.0),
      child: Container(
        height: deviceHeight * 0.265,
        width: deviceWidth * 0.9,
        decoration: BoxDecoration(
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/food.png'),
            ),
            borderRadius: BorderRadius.circular(20.0)),
      ),
    );
  }

  Widget playButton() {
    return Container(
      height: deviceWidth * 0.15,
      width: deviceWidth * 0.15,
      decoration: const BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/image3.png'))),
    );
  }

  Widget playVideo() {
    return Stack(
      children: [
        Positioned(
            child: videoSection()),
        Positioned(
            top: deviceHeight * 0.125,
            left: deviceWidth * 0.355,
            child: playButton())
      ],
    );
  }
}
