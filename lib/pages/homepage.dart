import 'package:flutter/material.dart';
import 'package:project/widgets/all_food_section_widget.dart';
import 'package:project/widgets/header_section_widget.dart';
import 'package:project/widgets/play_video_widget.dart';
import 'package:project/widgets/profile_section_widget.dart';
import 'package:project/widgets/top_button_widget.dart';

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
      body: SingleChildScrollView(
        child: Center(
            child: (Container(
                height: deviceHeight,
                width: deviceWidth,
                padding: EdgeInsets.symmetric(
                    horizontal: deviceWidth * 0.05,
                    vertical: deviceHeight * 0.006),
                child: Column(
                  children: [
                    headerSection(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    playVideo(deviceHeight, deviceWidth),
                    const SizedBox(
                      height: 10.0,
                    ),
                    profileSection(),
                    const SizedBox(
                      height: 10.0,
                    ),
                    allFoodSection(),
                  ],
                )))),
      ),
    );
  }
}

