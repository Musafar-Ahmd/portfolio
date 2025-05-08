import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';

Widget customButton({
  required context,
  required VoidCallback ontap,
  required String buttontext,
  required double spread,
  required double blur,
  required void Function(PointerEnterEvent) onEnter,
  required void Function(PointerExitEvent) onExit,
  required double horizontalpadding,
  required double verticlePadding
}) {
  final size = MediaQuery.of(context).size.width;
  return MouseRegion(
    onEnter: onEnter,
    onExit: onExit,
    child: InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizontalpadding, vertical: verticlePadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: greenColor, // Replace with your greenColor variable
          boxShadow: [
            BoxShadow(
              color: greenColor, // Replace with your greenColor variable
              spreadRadius: spread,
              blurRadius: blur,
            ),
          ],
        ),
        child: Text(buttontext,style: normalFonts(fontSize:size *.01 , fontweight: FontWeight.w500, color: whiteColor),),
      ),
    ),
  );
}

customButtonMobile({required VoidCallback ontap,required String buttontext,required context}){
  final size = MediaQuery.of(context).size.width;
  return InkWell(
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
      onTap: ontap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: greenColor, // Replace with your greenColor variable
          boxShadow: [
            BoxShadow(
              color: greenColor, // Replace with your greenColor variable
              spreadRadius: .4,
              blurRadius: 1,
            ),
          ],
        ),
        child: Text(buttontext,style: normalFonts(fontSize:size *.03 , fontweight: FontWeight.w500, color: whiteColor),),
      ),
    );
}
