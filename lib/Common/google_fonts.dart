import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle appbarFontMain({
  required double fontSize,
  required FontWeight fontweight,
}) {
  return GoogleFonts.inknutAntiqua(
    fontSize: fontSize,
    fontWeight: fontweight,
  );
}

TextStyle normalFonts({
  required double fontSize,
  required FontWeight fontweight,
  required Color color
}) {
  return GoogleFonts.modernAntiqua(
    fontSize: fontSize,
    fontWeight: fontweight,
    color: color,
  );
}
TextStyle normalFonts1({
  required double fontSize,
  required FontWeight fontweight,
  required Color color
}) {
  return GoogleFonts.exo2(
    fontSize: fontSize,
    fontWeight: fontweight,
    color: color,
  );
}

TextStyle styledFont({
  required double fontSize,
  required FontWeight fontweight,
  required Color color
}) {
  return GoogleFonts.protestGuerrilla(
    fontSize: fontSize,
    fontWeight: fontweight,
    color: color,
  );
}

TextStyle timerFont({
  required double fontSize,
  required FontWeight fontweight,
  required Color color
}) {
  return GoogleFonts.dotGothic16(
    fontSize: fontSize,
    fontWeight: fontweight,
    color: color,
  );
}
