import 'package:flutter/material.dart';
import 'package:project/widgets/header.dart';
import 'package:project/widgets/topButton.dart';

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
                children: [headerSection()],
              ))),
        ));
  }

  Widget imageSection() {
    return Image.asset();
  }
}
