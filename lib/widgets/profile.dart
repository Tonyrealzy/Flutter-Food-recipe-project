import 'package:flutter/material.dart';
import 'package:project/widgets/about.dart';
import 'package:project/widgets/follow.dart';
import 'package:project/widgets/review.dart';

Widget profileSection() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    mainAxisSize: MainAxisSize.max,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 4.0, bottom: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: [reviewSection()],
        ),
      ),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [aboutSection(), followButton()],
      )
    ],
  );
}