import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget followButton() {
  return ElevatedButton(
    onPressed: () {
      // setState((){
      //   buttonClicked = !buttonClicked;
      // });
    },
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(12))),
          fixedSize: MaterialStateProperty.all<Size>(const Size(99.0, 45.5))
    ),
    child: Text("Follow",
        style: GoogleFonts.poppins(
            fontSize: 16, color: Colors.white, fontWeight: FontWeight.w500)),
  );
}
