import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget breadSection() {
  return Row(children: [
    Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0),
      child: Container(
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: Colors.white,
          ),
          child: Image.asset("assets/images/image1.png")),
    ),
    Text("Bread",
        style: GoogleFonts.poppins(fontWeight: FontWeight.w600, fontSize: 20)),
  ]);
}

Widget breadContainer() {
  return Container(
    height: 95,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      color: const Color.fromARGB(255, 226, 226, 226),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.max,
      children: [
        breadSection(),
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Text("200g",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w400,
                  fontSize: 18,
                  color: Colors.grey)),
        ),
      ],
    ),
  );
}
