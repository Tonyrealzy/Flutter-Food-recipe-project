import 'package:flutter/material.dart';
import 'package:project/widgets/header.dart';
import 'package:project/widgets/topbutton.dart';

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
        body: SafeArea(
          child: (Container(
              height: deviceHeight,
              width: deviceWidth,
              padding: EdgeInsets.symmetric(
                  horizontal: deviceWidth * 0.05,
                  vertical: deviceHeight * 0.006),
              child: Column(
                children: [headerSection(), videoSection()],
              ))),
        ));
  }

  Widget videoSection() {
    return Padding(
      padding:
          const EdgeInsets.only(top: 24.0, left: 2.0, bottom: 8.0, right: 2.0),
      child: Container(
        height: deviceHeight * 0.265,
        width: deviceWidth,
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
    return Container();
  }
}
