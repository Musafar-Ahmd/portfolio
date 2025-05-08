import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';
import 'package:portfolio/Common/strings.dart';
import 'package:portfolio/Features/Screens/Home/home_screen.dart';
import 'package:portfolio/Features/Screens/Services/widgets/project_card.dart';
import 'package:portfolio/Features/Screens/Services/widgets/service_card.dart';
import 'package:particles_flutter/particles_engine.dart';

class ServiceScreen extends StatelessWidget {
  const ServiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child:
        size >= 900 ?
         Stack(
           children: [
      //       Particles(
      //   awayRadius: 150,
      //   particles: createParticles(),
      //   height: MediaQuery.of(context).size.height*2.5,
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInLeft(
                      delay: Duration(milliseconds: 500),
                      child: Text(
                        "MY ",
                        style: normalFonts(
                            fontSize: size * .03,
                            fontweight: FontWeight.bold,
                            color: whiteColor),
                      ),
                    ),
                    FadeInRight(
                      delay: Duration(milliseconds: 500),
                      child: Text(
                        "SERVICES",
                        style: normalFonts(
                            fontSize: size * .03,
                            fontweight: FontWeight.bold,
                            color: greenColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size * .04),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    FadeInLeftBig(
                      delay: Duration(milliseconds: 900),
                      child: ServiceCard(
                        title: "Android Development",
                        description: aboutAndroid,
                        size: size, image: 'assets/images/androidBig.png',
                      ),
                    ),
                    FadeInRightBig(
                      delay: Duration(milliseconds: 900),
                      child: ServiceCard(
                        title: "iOS Development",
                        description: aboutIos,
                        size: size, image: 'assets/images/appleBig.png',
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size *.01,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInLeft(
                      delay: Duration(milliseconds: 500),
                      child: Text(
                        "MY ",
                        style: normalFonts(
                            fontSize: size * .03,
                            fontweight: FontWeight.bold,
                            color: whiteColor),
                      ),
                    ),
                    FadeInRight(
                      delay: Duration(milliseconds: 500),
                      child: Text(
                        "PROJECTS",
                        style: normalFonts(
                            fontSize: size * .03,
                            fontweight: FontWeight.bold,
                            color: greenColor),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size *.01,),
                Projects(),
              ],
                     ),
           ],
         ):
        //! =========================================================== phoneScreen Start
        Column(
         children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInLeft(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    "MY ",
                    style: normalFonts(
                        fontSize: size * .07,
                        fontweight: FontWeight.bold,
                        color: whiteColor),
                  ),
                ),
                FadeInRight(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    "SERVICES",
                    style: normalFonts(
                        fontSize: size * .07,
                        fontweight: FontWeight.bold,
                        color: greenColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: size*.02,),
            FadeInUp(
              delay: Duration(milliseconds: 800),
              child: ServiceCardMobile(title: "Android Apps", description: aboutAndroid, size: size, image: "assets/images/androidBig.png")),
            SizedBox(height: size *.03,),
            FadeInUp(
              delay: Duration(milliseconds: 900),
              child: ServiceCardMobile(title: "IOS Apps", description: aboutAndroid, size: size, image: "assets/images/appleBig.png")),
              // SizedBox(height: size *03,),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FadeInLeft(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    "MY ",
                    style: normalFonts(
                        fontSize: size * .07,
                        fontweight: FontWeight.bold,
                        color: whiteColor),
                  ),
                ),
                FadeInRight(
                  delay: Duration(milliseconds: 500),
                  child: Text(
                    "PROJECTS",
                    style: normalFonts(
                        fontSize: size * .07,
                        fontweight: FontWeight.bold,
                        color: greenColor),
                  ),
                ),
              ],
            ),
            SizedBox(height: size *.02,),
            FadeInUpBig(
              duration: Duration(seconds: 3),
              child: Projects()),
            size<700?
            SizedBox(height: size *.4,):SizedBox()
         ],
        )
      ),
    );
  }
}
