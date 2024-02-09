import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget reviewSection() {
  return Row(
    children: [
      const Padding(
        padding: EdgeInsets.only(left: 4.0, right: 4.0),
        child: Icon(Icons.star_rounded, color: Colors.orangeAccent, size: 20.0),
      ),
      Text("4,5",
          style:
              GoogleFonts.poppins(fontSize: 18, fontWeight: FontWeight.w600)),
      Padding(
        padding: const EdgeInsets.only(left: 8.0, right: 8.0),
        child: Text("(300 Reviews)",
            style: GoogleFonts.poppins(
                fontWeight: FontWeight.w400, fontSize: 18, color: Colors.grey)),
      )
    ],
  );
}
