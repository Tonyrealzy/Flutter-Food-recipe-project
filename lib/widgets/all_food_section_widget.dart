import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:project/widgets/.dart';
import 'package:project/widgets/bread_container_widget.dart';
import 'package:project/widgets/eggs_container_widget.dart';
import 'package:project/widgets/milk_container_widget.dart';

Widget allFoodSection() {
  return Expanded(
    child: Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              left: 8.0, right: 8.0, top: 16.0, bottom: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Ingredients",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w600, fontSize: 24)),
              Text("5 items",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w300,
                      fontSize: 18,
                      color: Colors.grey))
            ],
          ),
        ),
        breadContainer(),
        const SizedBox(height: 15.0),
        eggsContainer(),
        const SizedBox(height: 15.0),
        milkContainer(),
        const SizedBox(height: 15.0),
      ],
    ),
  );
}
