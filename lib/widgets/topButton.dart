import 'package:flutter/material.dart';

Widget topButtonSection() {
    return Expanded(
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back,
                      size: 30, color: Colors.black)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_horiz,
                      size: 30, color: Colors.black)),
            )
          ]),
    );
  }