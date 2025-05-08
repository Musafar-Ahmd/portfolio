import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';

skillCard(context,String text){
  final size = MediaQuery.of(context).size.width;
  return Container(
    height: size *.025,
    width: size *.08,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: greenColor,
    ),
    child: Center(child: Text(text,style: normalFonts1(fontSize: size *.01, fontweight: FontWeight.bold, color: whiteColor),),),
  );
}

skillCardMobile(context,String text){
  final size = MediaQuery.of(context).size.width;
  return Container(
    height: size *.08,
    width: size *.08,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      color: greenColor,
    ),
    child: Center(child: Text(text,style: normalFonts1(fontSize: size *.03, fontweight: FontWeight.bold, color: whiteColor),),),
  );
}
