import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';
import 'package:portfolio/Common/strings.dart';
import 'package:portfolio/Features/Screens/Home/home_screen.dart';
import 'package:particles_flutter/particles_engine.dart';

class AboutMeScreen extends StatefulWidget {
  const AboutMeScreen({super.key});

  @override
  State<AboutMeScreen> createState() => _AboutMeScreenState();
}

class _AboutMeScreenState extends State<AboutMeScreen> {
  bool hovered = false;
  bool hoverOn1 = false;
  bool hoverOn2 = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
          child: size >= 900
              ? Stack(
                  children: [
                    //       Particles(
                    //   awayRadius: 50,
                    //   particles: createParticles(),
                    //   height: MediaQuery.of(context).size.height,
                    //   width: MediaQuery.of(context).size.width,
                    //   onTapAnimation: true,
                    //   awayAnimationDuration: const Duration(milliseconds: 100),
                    //   awayAnimationCurve: Curves.linear,
                    //   enableHover: true,
                    //   hoverRadius: 90,
                    //   connectDots: false,
                    // ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FadeInLeft(
                                delay: Duration(milliseconds: 500),
                                child: Text(
                                  "ABOUT ",
                                  style: normalFonts(
                                      fontSize: size * .03,
                                      fontweight: FontWeight.bold,
                                      color: whiteColor),
                                ),
                              ),
                              FadeInRight(
                                delay: Duration(milliseconds: 500),
                                child: Text(
                                  "ME",
                                  style: normalFonts(
                                      fontSize: size * .03,
                                      fontweight: FontWeight.bold,
                                      color: greenColor),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: size * 0.1,
                                right: size * 0.1,
                                top: size * 0.05),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // FadeInLeftBig(
                                //   delay: Duration(milliseconds: 800),
                                //   child: MouseRegion(
                                //     onEnter: (_) {
                                //       setState(() {
                                //         hovered = true;
                                //       });
                                //     },
                                //     onExit: (_) {
                                //       setState(() {
                                //         hovered = false;
                                //       });
                                //     },
                                //     child: Container(
                                //       height: size * .2,
                                //       width: size * .2,
                                //       decoration: BoxDecoration(
                                //         color: blackColor,
                                //         borderRadius:
                                //             BorderRadius.circular(180),
                                //         boxShadow: [
                                //           BoxShadow(
                                //             offset: Offset(1, 0),
                                //             color: greenColor,
                                //             spreadRadius: hovered ? 10 : .6,
                                //             blurRadius: hovered ? 10 : 5,
                                //           ),
                                //         ],
                                //       ),
                                //       child: ClipRRect(
                                //         borderRadius:
                                //             BorderRadius.circular(180),
                                // child: Image.asset(
                                //   "assets/images/aboutme.png",
                                //   fit: BoxFit.fill,
                                // ),
                                //  ),
                                //    ),
                                //  ),
                                //   ),
                                //    SizedBox(
                                //      width: size * .1,
                                //    ),
                                FadeInRightBig(
                                  delay: Duration(milliseconds: 800),
                                  child: SizedBox(
                                      width: size * .5,
                                      child: Text(
                                        aboutMe,
                                        textAlign: TextAlign.justify,
                                        style: normalFonts(
                                            fontSize: size * .01,
                                            fontweight: FontWeight.w600,
                                            color: whiteColor),
                                      )),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size * .04,
                          ),
                          FadeInUpBig(
                            delay: Duration(milliseconds: 1000),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      hoverOn1 = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      hoverOn1 = false;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/experience.png",
                                        height:
                                            hoverOn1 ? size * .06 : size * .05,
                                        width:
                                            hoverOn1 ? size * .06 : size * .05,
                                        color: greenColor,
                                      ),
                                      Text(
                                        "2+ Year",
                                        style: normalFonts(
                                            fontSize: hoverOn1
                                                ? size * .02
                                                : size * .01,
                                            fontweight: FontWeight.bold,
                                            color: whiteColor),
                                      ),
                                      Text(
                                        "Experience",
                                        style: normalFonts(
                                            fontSize: hoverOn1
                                                ? size * .02
                                                : size * .01,
                                            fontweight: FontWeight.w500,
                                            color: whiteColor),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: size * .03,
                                ),
                                MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      hoverOn2 = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      hoverOn2 = false;
                                    });
                                  },
                                  child: Column(
                                    children: [
                                      Image.asset(
                                        "assets/images/work.png",
                                        height:
                                            hoverOn2 ? size * .06 : size * .05,
                                        width:
                                            hoverOn2 ? size * .06 : size * .05,
                                        color: greenColor,
                                      ),
                                      Text(
                                        "16+",
                                        style: normalFonts(
                                            fontSize: hoverOn2
                                                ? size * .02
                                                : size * .01,
                                            fontweight: FontWeight.bold,
                                            color: whiteColor),
                                      ),
                                      Text(
                                        "Projects",
                                        style: normalFonts(
                                            fontSize: hoverOn2
                                                ? size * .02
                                                : size * .01,
                                            fontweight: FontWeight.w500,
                                            color: whiteColor),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height:
                                hoverOn1 || hoverOn2 ? size * .05 : size * .04,
                          )
                        ],
                      ),
                    ),
                  ],
                )
              :
//!======================================================phonescreen Start =======================================================================
              Stack(
                  children: [
                    //       Particles(
                    //   awayRadius: 50,
                    //   particles: createParticlesPhone(),
                    //   height: MediaQuery.of(context).size.height,
                    //   width: MediaQuery.of(context).size.width,
                    //   onTapAnimation: true,
                    //   awayAnimationDuration: const Duration(milliseconds: 100),
                    //   awayAnimationCurve: Curves.linear,
                    //   enableHover: true,
                    //   hoverRadius: 90,
                    //   connectDots: false,
                    // ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FadeInLeft(
                                delay: Duration(milliseconds: 500),
                                child: Text(
                                  "About ",
                                  style: normalFonts(
                                      fontSize: size * .07,
                                      fontweight: FontWeight.bold,
                                      color: whiteColor),
                                ),
                              ),
                              FadeInRight(
                                delay: Duration(milliseconds: 500),
                                child: Text(
                                  "ME",
                                  style: normalFonts(
                                      fontSize: size * .07,
                                      fontweight: FontWeight.bold,
                                      color: greenColor),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: size * .06,
                          ),
                          // FadeInUpBig(
                          //   delay: Duration(milliseconds: 800),
                          //   child: Container(
                          //     height: size * .4,
                          //     width: size * .4,
                          //     decoration: BoxDecoration(
                          //       color: blackColor,
                          //       borderRadius: BorderRadius.circular(180),
                          //       boxShadow: [
                          //         BoxShadow(
                          //           offset: Offset(1, 0),
                          //           color: greenColor,
                          //           spreadRadius: hovered ? 10 : .6,
                          //           blurRadius: hovered ? 10 : 5,
                          //         ),
                          //       ],
                          //     ),
                          //     child: ClipRRect(
                          //       borderRadius: BorderRadius.circular(180),
                          //       // child: Image.asset(
                          //       //   "assets/images/aboutme.png",
                          //       //   fit: BoxFit.fill,
                          //       // ),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: size * .06,
                          // ),
                          FadeInUpBig(
                            delay: Duration(milliseconds: 1000),
                            child: SizedBox(
                                width: size,
                                child: Text(
                                  aboutMe,
                                  style: normalFonts(
                                      fontSize: size * .025,
                                      fontweight: FontWeight.w600,
                                      color: whiteColor),
                                )),
                          ),
                          SizedBox(
                            height: size * .07,
                          ),
                          FadeInUpBig(
                            delay: Duration(milliseconds: 1200),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/experience.png",
                                      height: size * .2,
                                      width: size * .2,
                                      color: greenColor,
                                    ),
                                    Text(
                                      "2+ years",
                                      style: normalFonts(
                                          fontSize: size * .02,
                                          fontweight: FontWeight.bold,
                                          color: whiteColor),
                                    ),
                                    Text(
                                      "Experience",
                                      style: normalFonts(
                                          fontSize: size * .02,
                                          fontweight: FontWeight.w500,
                                          color: whiteColor),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size * .02,
                                ),
                                Column(
                                  children: [
                                    Image.asset(
                                      "assets/images/work.png",
                                      height: size * .2,
                                      width: size * .2,
                                      color: greenColor,
                                    ),
                                    Text(
                                      "16+",
                                      style: normalFonts(
                                          fontSize: size * .02,
                                          fontweight: FontWeight.bold,
                                          color: whiteColor),
                                    ),
                                    Text(
                                      "Projects",
                                      style: normalFonts(
                                          fontSize: size * .02,
                                          fontweight: FontWeight.w500,
                                          color: whiteColor),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size * .3,
                          )
                        ],
                      ),
                    ),
                  ],
                )),
    );
  }
}
