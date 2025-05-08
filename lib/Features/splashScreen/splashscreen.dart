import 'dart:async';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animation_progress_bar/flutter_animation_progress_bar.dart';
import 'package:portfolio/Common/bottombar.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/web_drawer.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  int customsteps = 0;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => MediaQuery.of(context).size.width <= 900
                  ? BottomnavBarMobile()
                  : NavbarWeb()));
    });
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blackColor,
      body: size >= 900
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FadeIn(
                  delay: Duration(milliseconds: 800),
                  child: SizedBox(
                    height: size * .2,
                    width: size * .2,
                    child: Image.asset(
                      color: Colors.white,
                      "assets/images/logoNew.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size * .3),
                  child: FadeIn(
                    delay: Duration(seconds: 0),
                    child: FAProgressBar(
                      borderRadius: BorderRadius.circular(50),
                      size: size * .02,
                      progressColor: greenColor,
                      changeProgressColor: greenColor,
                      animatedDuration: Duration(seconds: 4),
                      maxValue: 100,
                      currentValue: 100,
                      displayText: '%',
                    ),
                  ),
                )
              ],
            )
          :
          //!================================phone
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: size * .6,
                  width: size * .6,
                  child: Image.asset(
                    "assets/images/logoNew.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: size * .3),
                  child: FAProgressBar(
                    borderRadius: BorderRadius.circular(50),
                    size: size * .04,
                    progressColor: greenColor,
                    changeProgressColor: greenColor,
                    animatedDuration: Duration(seconds: 2),
                    maxValue: 100,
                    currentValue: 100,
                    displayText: '%',
                  ),
                )
              ],
            ),
    );
  }
}
