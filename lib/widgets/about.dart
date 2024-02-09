import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget aboutSection() {
  return Row(
    children: [
      Image.asset("assets/images/image4.png",
          height: 55, width: 55, fit: BoxFit.cover),
      Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0),
        child: Column(children: [
          Text("Roberta Anny",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w700, fontSize: 20)),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0, right: 8.0),
              child: Image.asset("assets/images/image2.png"),
            ),
            Text("Bali, Indonesia",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w400,
                    fontSize: 17,
                    color: Colors.grey))
          ])
        ]),
      ),
    ],
  );
}
