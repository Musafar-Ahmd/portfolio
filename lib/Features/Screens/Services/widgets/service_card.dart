import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';

class ServiceCard extends StatefulWidget {
  final String title;
  final String description;
  final double size;
  final String image;

  const ServiceCard({
    Key? key,
    required this.title,
    required this.description,
    required this.size, required this.image,
  }) : super(key: key);

  @override
  _ServiceCardState createState() => _ServiceCardState();
}

class _ServiceCardState extends State<ServiceCard> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => cardKey.currentState?.toggleCard(),
      onExit: (_) => cardKey.currentState?.toggleCard(),
      child: FlipCard(
        key: cardKey,
        flipOnTouch: false,
        front: Container(
          width: widget.size * 0.3,
          height: widget.size * 0.3 ,
          decoration: BoxDecoration(
            color: blackColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: widget.size *.01,),
              SizedBox(
                height: widget.size *.2,
                child: Image.asset(widget.image,fit: BoxFit.contain,color: whiteColor,)),
                SizedBox(height: widget.size *.03,),
              Text(widget.title,style: normalFonts1(fontSize: widget.size *.01, fontweight: FontWeight.bold, color: whiteColor),),
            ],
          )
        ),
        back: Container(
          padding: EdgeInsets.symmetric(vertical: widget.size *.046,horizontal: widget.size *.02),
          width: widget.size * 0.3,
          height: widget.size * 0.3 ,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: greenColor,
                spreadRadius: 1,
                blurRadius: 2
              )
            ],
            color: blackColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Text(widget.description,style: normalFonts1(fontSize: widget.size*.01, fontweight: FontWeight.w500, color: whiteColor),)
            ],
          )
        ),
      ),
    );
  }
}

//!service card Mobile


class ServiceCardMobile extends StatefulWidget {
  final String title;
  final String description;
  final double size;
  final String image;

  const ServiceCardMobile({
    Key? key,
    required this.title,
    required this.description,
    required this.size, required this.image,
  }) : super(key: key);

  @override
  _ServiceCardMobileState createState() => _ServiceCardMobileState();
}

class _ServiceCardMobileState extends State<ServiceCardMobile> {
  GlobalKey<FlipCardState> cardKey = GlobalKey<FlipCardState>();

  @override
  Widget build(BuildContext context) {
    return FlipCard(
      key: cardKey,
      flipOnTouch: false,
      front: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: (){
        cardKey.currentState?.toggleCard();
        },
        child: Container(
          width: widget.size * 0.6,
          height: widget.size * 0.6 ,
          decoration: BoxDecoration(
            color: blackColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              SizedBox(height: widget.size *.01,),
              SizedBox(
                height: widget.size *.4,
                child: Image.asset(widget.image,fit: BoxFit.contain,color: whiteColor,)),
                SizedBox(height: widget.size *.03,),
              Text(widget.title,style: normalFonts1(fontSize: widget.size *.03, fontweight: FontWeight.bold, color: whiteColor),),
            ],
          )
        ),
      ),
      back: InkWell(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        focusColor: Colors.transparent,
        onTap: (){
          cardKey.currentState?.toggleCard();
        },
        child: Container(
          padding: EdgeInsets.symmetric(vertical: widget.size *.086,horizontal: widget.size *.02),
          width: widget.size * 0.6,
          height: widget.size * 0.6 ,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: greenColor,
                spreadRadius: 1,
                blurRadius: 2
              )
            ],
            color: blackColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Text(widget.description,style: normalFonts1(fontSize: widget.size*.02, fontweight: FontWeight.w500, color: whiteColor),)
            ],
          )
        ),
      ),
    );
  }
}
