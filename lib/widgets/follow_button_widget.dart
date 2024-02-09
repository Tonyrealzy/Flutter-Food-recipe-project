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
      fixedSize: MaterialStateProperty.all<Size>(const Size.fromHeight(45.0)),
    ),
    child: Text("Follow",
        style: GoogleFonts.poppins(
            fontSize: 17, color: Colors.white, fontWeight: FontWeight.w500)),
  );
}
