import 'dart:async';
import 'dart:io';
import 'dart:math';

import 'package:animate_do/animate_do.dart';
import 'package:animated_rotating_widget/animated_rotating_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';
import 'package:portfolio/Common/strings.dart';
import 'package:portfolio/Features/Screens/Home/device_info.dart';
import 'package:portfolio/custom/custom_button.dart';
import 'package:particles_flutter/component/particle/particle.dart';
import 'package:particles_flutter/particles_engine.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Future<void> _getDeviceInfo() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    String info = '';

    if (kIsWeb) {
      WebBrowserInfo webInfo = await deviceInfoPlugin.webBrowserInfo;
      info = '''
      Browser Name: ${webInfo.browserName}
      User Agent: ${webInfo.userAgent}
      Platform: ${webInfo.platform}
      Vendor: ${webInfo.vendor}
      Language: ${webInfo.language}
    ''';
    } else if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      info = '''
      Device Model: ${androidInfo.model}
      Manufacturer: ${androidInfo.manufacturer}
      Android ID: ${androidInfo.product}
      Version: ${androidInfo.version.release}
      Brand: ${androidInfo.brand}
      Board: ${androidInfo.board}
      Device: ${androidInfo.device}
      Hardware: ${androidInfo.hardware}
    ''';
    } else if (Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      info = '''
      Device Name: ${iosInfo.name}
      Model: ${iosInfo.model}
      System Name: ${iosInfo.systemName}
      System Version: ${iosInfo.systemVersion}
      Identifier for Vendor: ${iosInfo.identifierForVendor}
      Is Physical Device: ${iosInfo.isPhysicalDevice}
    ''';
    }

    setState(() {
      info = info;
    });
  }

  String cvLink =
      "https://drive.google.com/drive/folders/1cFmqPGnI2DmaxT1EFb18EYQ4y7t7lHMr";
  bool hovered = false;
  bool hoverCustomButton = false;
  bool hoverCustomButton1 = false;
  List<bool> hoverMedias = [false, false, false, false];
  List<String> socialmedias = [
    "assets/images/instagram.png",
    "assets/images/facebook.png",
    "assets/images/linkedin.png",
    "assets/images/github.png"
  ];

  Future<void> _launchURL(String url) async {
    await launchUrlString(url);
  }

  @override
  void initState() {
    super.initState();
    DeviceService().getDeviceInfo();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    final double textSize = size * 0.03;
    final double animatedTextSize = size * 0.02;
    final phoneSize = size <= 900;

    return Scaffold(
      appBar: phoneSize
          ? AppBar(
              scrolledUnderElevation: 0,
              backgroundColor: blackColor,
              title: Row(
                children: [
                  // SizedBox(
                  //   width: size * .15,
                  //   height: size * .15,
                  //   child: AnimatedRotatingWidget(
                  //     duration: Duration(seconds: 3),
                  //     child: Image.asset(
                  //       "assets/images/logo4.png",
                  //       fit: BoxFit.fill,
                  //     ),
                  //   ),
                  // ),
                  // SizedBox(
                  //   width: size * .01,
                  // ),
                  Container(
                    //  color: whiteColor,
                    width: size * .2,
                    height: size * .03,
                    child: Center(
                      child: DefaultTextStyle(
                        style: styledFont(
                            fontSize: size * .03,
                            fontweight: FontWeight.bold,
                            color: greenColor),
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            ScaleAnimatedText('Run 🏃'),
                            ScaleAnimatedText('Loot 💰'),
                            ScaleAnimatedText('Die 💀'),
                            ScaleAnimatedText('Repeat ♻️'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          : null,
      backgroundColor: blackColor,
      body: SingleChildScrollView(
          child: size > 900
              ? Stack(
                  children: [
                    // Particles(
                    //   awayRadius: 150,
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
                    Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(
                              left: size * 0.1,
                              right: size * 0.1,
                              top: size * .06),
                          child: Row(
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    children: [
                                      Text(
                                        "Hi, It's",
                                        style: normalFonts(
                                          fontSize: textSize,
                                          fontweight: FontWeight.w400,
                                          color: whiteColor,
                                        ),
                                      ),
                                      AnimatedTextKit(
                                          totalRepeatCount: 1,
                                          animatedTexts: [
                                            TyperAnimatedText(
                                              speed:
                                                  Duration(milliseconds: 200),
                                              " Musafar Ahamed",
                                              textStyle: styledFont(
                                                fontSize: textSize,
                                                fontweight: FontWeight.w400,
                                                color: greenColor,
                                              ),
                                            )
                                          ]),
                                    ],
                                  ),
                                  SizedBox(
                                      height:
                                          size * 0.01), // Space between texts
                                  Row(
                                    children: <Widget>[
                                      Text(
                                        "I'm an ",
                                        style: normalFonts(
                                            fontSize: animatedTextSize,
                                            fontweight: FontWeight.w500,
                                            color: whiteColor),
                                      ),
                                      SizedBox(
                                        width: size * 0.02,
                                      ),
                                      DefaultTextStyle(
                                        style: normalFonts(
                                            fontSize: animatedTextSize,
                                            fontweight: FontWeight.w500,
                                            color: greenColor),
                                        child: SizedBox(
                                          height: animatedTextSize,
                                          child: AnimatedTextKit(
                                            repeatForever: true,
                                            animatedTexts: [
                                              RotateAnimatedText(
                                                  'Android Developer'),
                                              RotateAnimatedText(
                                                  'IOS Developer'),
                                              RotateAnimatedText('Freelancer'),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(height: size * 0.01),
                                  SizedBox(
                                    width: size * .4,
                                    child: Text(
                                      largeHometext,
                                      style: normalFonts(
                                        fontSize: size * .01,
                                        fontweight: FontWeight.w600,
                                        color: whiteColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: size * .02),
                                  SizedBox(
                                    height: size * .036,
                                    child: ListView.separated(
                                      separatorBuilder: (context, index) {
                                        return SizedBox(width: size * .008);
                                      },
                                      scrollDirection: Axis.horizontal,
                                      shrinkWrap: true,
                                      itemCount: socialmedias.length,
                                      itemBuilder: (context, index) {
                                        return FadeIn(
                                          delay: Duration(seconds: 1),
                                          child: MouseRegion(
                                            onEnter: (_) {
                                              setState(() {
                                                hoverMedias[index] = true;
                                              });
                                            },
                                            onExit: (_) {
                                              setState(() {
                                                hoverMedias[index] = false;
                                              });
                                            },
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () {
                                                switch (index) {
                                                  case 0:
                                                    _launchURL(
                                                        "https://www.instagram.com/musafar_ahmd/");
                                                    break;
                                                  case 2:
                                                    _launchURL(
                                                        "https://www.linkedin.com/in/musafar-ahamed/");
                                                    break;
                                                  case 3:
                                                    _launchURL(
                                                        "https://github.com/Musafar-Ahmd");
                                                    break;
                                                }
                                              },
                                              child: Container(
                                                width: size * .036,
                                                height: hoverMedias[index]
                                                    ? size * .039
                                                    : size * .036,
                                                decoration: BoxDecoration(
                                                  color: blackColor,
                                                  boxShadow: [
                                                    BoxShadow(
                                                        color: greenColor,
                                                        spreadRadius:
                                                            hoverMedias[index]
                                                                ? 3
                                                                : 1,
                                                        blurRadius:
                                                            hoverMedias[index]
                                                                ? 3
                                                                : 1)
                                                  ],
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          size * .5),
                                                ),
                                                child: Image.asset(
                                                  socialmedias[index],
                                                  width: size *
                                                      .0001, // Set the desired width
                                                  height: size * .0001,
                                                  color: hoverMedias[index]
                                                      ? whiteColor
                                                      : greenColor, // Set the desired height
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    height: size * .02,
                                  ),
                                  SizedBox(
                                    height: size * .04,
                                    child: Row(
                                      children: [
                                        FadeInUpBig(
                                          child: customButton(
                                              context: context,
                                              buttontext: "Hire Me",
                                              spread:
                                                  hoverCustomButton ? 2 : .2,
                                              blur: hoverCustomButton ? 3 : 1,
                                              onEnter: (_) {
                                                setState(() {
                                                  hoverCustomButton = true;
                                                });
                                              },
                                              onExit: (_) {
                                                setState(() {
                                                  hoverCustomButton = false;
                                                });
                                              },
                                              ontap: () {},
                                              horizontalpadding:
                                                  hoverCustomButton ? 15 : 10,
                                              verticlePadding:
                                                  hoverCustomButton ? 15 : 10),
                                        ),
                                        SizedBox(
                                          width: size * .01,
                                        ),
                                        FadeInUpBig(
                                            child: customButton(
                                                context: context,
                                                buttontext: "Download CV",
                                                spread:
                                                    hoverCustomButton1 ? 2 : .4,
                                                blur:
                                                    hoverCustomButton1 ? 4 : 1,
                                                onEnter: (_) {
                                                  setState(() {
                                                    hoverCustomButton1 = true;
                                                  });
                                                },
                                                onExit: (_) {
                                                  setState(() {
                                                    hoverCustomButton1 = false;
                                                  });
                                                },
                                                ontap: () {
                                                  _launchURL(cvLink);
                                                },
                                                horizontalpadding:
                                                    hoverCustomButton1
                                                        ? 15
                                                        : 10,
                                                verticlePadding:
                                                    hoverCustomButton1
                                                        ? 15
                                                        : 10))
                                      ],
                                    ),
                                  )
                                ],
                              ),
                              Spacer(),
                              FadeInRightBig(
                                child: MouseRegion(
                                  onEnter: (_) {
                                    setState(() {
                                      hovered = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      hovered = false;
                                    });
                                  },
                                  child: Container(
                                    height: size * .2,
                                    width: size * .2,
                                    decoration: BoxDecoration(
                                      color: blackColor,
                                      borderRadius: BorderRadius.circular(180),
                                      boxShadow: [
                                        BoxShadow(
                                          offset: Offset(1, 0),
                                          color: greenColor,
                                          spreadRadius: hovered ? 10 : .6,
                                          blurRadius: hovered ? 10 : 5,
                                        ),
                                      ],
                                    ),
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(180),
                                      child: Image.asset(
                                        "assets/images/image1.jpeg",
                                        fit: BoxFit.fill,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              :

              //!==============================================================================phonescreen

              Stack(
                  children: [
                    // Particles(
                    //   awayRadius: 50,
                    //   particles: createParticlesPhone(),
                    //   height: MediaQuery.of(context).size.height,
                    //   width: MediaQuery.of(context).size.width,
                    //   onTapAnimation: true,
                    //   awayAnimationDuration: const Duration(milliseconds: 100),
                    //   awayAnimationCurve: Curves.easeInCubic,
                    //   enableHover: true,
                    //   hoverRadius: 90,
                    //   connectDots: false,
                    // ),
                    Padding(
                      padding: EdgeInsets.only(left: 40, right: 40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Hi, It's",
                                style: normalFonts(
                                  fontSize: size * .06,
                                  fontweight: FontWeight.w400,
                                  color: whiteColor,
                                ),
                              ),
                              AnimatedTextKit(
                                  totalRepeatCount: 1,
                                  animatedTexts: [
                                    TyperAnimatedText(
                                      speed: Duration(milliseconds: 200),
                                      " Musafar Ahamed",
                                      textStyle: normalFonts(
                                        fontSize: size * .06,
                                        fontweight: FontWeight.w400,
                                        color: greenColor,
                                      ),
                                    )
                                  ]),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "I'm an ",
                                style: normalFonts(
                                    fontSize: size * .07,
                                    fontweight: FontWeight.w500,
                                    color: whiteColor),
                              ),
                              DefaultTextStyle(
                                style: normalFonts(
                                    fontSize: size * .06,
                                    fontweight: FontWeight.w500,
                                    color: greenColor),
                                child: SizedBox(
                                  height: size * .09,
                                  child: AnimatedTextKit(
                                    repeatForever: true,
                                    animatedTexts: [
                                      RotateAnimatedText('Android Developer'),
                                      RotateAnimatedText('IOS Developer'),
                                      RotateAnimatedText('Freelancer'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: size * 0.06),
                          FadeInUpBig(
                            delay: Duration(microseconds: 500),
                            child: Container(
                              height: size * .6,
                              width: size * .6,
                              decoration: BoxDecoration(
                                color: blackColor,
                                borderRadius: BorderRadius.circular(180),
                                boxShadow: [
                                  BoxShadow(
                                    offset: Offset(1, 0),
                                    color: greenColor,
                                    spreadRadius: hovered ? 10 : .6,
                                    blurRadius: hovered ? 10 : 5,
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(180),
                                child: Image.asset(
                                  "assets/images/image1.jpeg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: size * .07,
                          ),
                          FadeInUpBig(
                            delay: Duration(milliseconds: 800),
                            child: SizedBox(
                              height: size * .07,
                              child: ListView.separated(
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                      width: size * .01,
                                    );
                                  },
                                  scrollDirection: Axis.horizontal,
                                  shrinkWrap: true,
                                  itemCount: socialmedias.length,
                                  itemBuilder: (context, index) {
                                    return InkWell(
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        switch (index) {
                                          case 0:
                                            _launchURL(
                                                "https://www.instagram.com/musafar_ahmd/");
                                            break;
                                          case 2:
                                            _launchURL(
                                                "https://www.linkedin.com/in/musafar-ahamed/");
                                            break;
                                          case 3:
                                            _launchURL(
                                                "https://github.com/Musafar-Ahmd");
                                            break;
                                        }
                                      },
                                      child: Container(
                                        height: size * .07,
                                        width: size * .07,
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                width: .2, color: greenColor),
                                            borderRadius: BorderRadius.circular(
                                                size * .06)),
                                        child: ClipRRect(
                                            child: Image.asset(
                                          socialmedias[index],
                                          color: greenColor,
                                          height: size * .01,
                                          width: size * .01,
                                        )),
                                      ),
                                    );
                                  }),
                            ),
                          ),
                          SizedBox(
                            height: size * .04,
                          ),
                          FadeInUpBig(
                            delay: Duration(milliseconds: 1200),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                customButtonMobile(
                                    ontap: () {},
                                    buttontext: "Hire Me",
                                    context: context),
                                SizedBox(
                                  width: size * .01,
                                ),
                                customButtonMobile(
                                    ontap: () {
                                      _launchURL(cvLink);
                                    },
                                    buttontext: "Download CV",
                                    context: context),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: size * .04,
                          ),
                          FadeInUpBig(
                            delay: Duration(milliseconds: 1500),
                            child: SizedBox(
                                width: size,
                                child: Text(
                                  largeHometext,
                                  style: normalFonts(
                                      fontSize: size * .03,
                                      fontweight: FontWeight.w600,
                                      color: whiteColor),
                                )),
                          ),
                          SizedBox(
                            height: size * .4,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
    );
  }
}

List<Particle> createParticles() {
  var rng = Random();
  List<Particle> particles = [];
  for (int i = 0; i < 140; i++) {
    particles.add(Particle(
      color: Colors.white.withOpacity(0.6),
      size: rng.nextDouble() * 10,
      velocity: Offset(rng.nextDouble() * 200 * randomSign(),
          rng.nextDouble() * 200 * randomSign()),
    ));
  }
  return particles;
}

List<Particle> createParticlesPhone() {
  var rng = Random();
  List<Particle> particles = [];
  for (int i = 0; i < 140; i++) {
    particles.add(Particle(
      color: Colors.white.withOpacity(0.6),
      size: rng.nextDouble() * 5,
      velocity: Offset(rng.nextDouble() * 200 * randomSign(),
          rng.nextDouble() * 200 * randomSign()),
    ));
  }
  return particles;
}

double randomSign() {
  var rng = Random();
  return rng.nextBool() ? 1 : -1;
}
