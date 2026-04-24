import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

Widget textdef(
  String data,
  double size, {
  Color? color,
  FontWeight? weight,
  String? family,
}) {
  return Text(
    data,
    style: TextStyle(
      fontSize: size,
      color: color,
      fontWeight: weight,
      fontFamily: family ?? GoogleFonts.lato().fontFamily,
    ),
  );
}
