import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';
import 'package:portfolio/Features/Screens/Home/home_screen.dart';
import 'package:portfolio/Features/Screens/skills/widgets/amination.dart';
import 'package:portfolio/Features/Screens/skills/widgets/skill_container.dart';
import 'package:particles_flutter/particles_engine.dart';

class SkillScreen extends StatefulWidget {
  const SkillScreen({super.key});

  @override
  State<SkillScreen> createState() => _SkillScreenState();
}

class _SkillScreenState extends State<SkillScreen> with SingleTickerProviderStateMixin {
  List<String> skills1 = [
    "Flutter",
    "Dart",
    "HTML",
    "CSS",
    "Provider",
    "MVVM",
    "MVC",
    "Python",
    "DIO",
    "Micro App Service"
  ];

  List<String> skill2 = [
    "Git",
    "BitBucket",
    "GitHub",
    "Scrum",
    "Jira",
    "Debugging",
    "CI/CD",
    "HTTP",
    "PostMan"
  ];

  late AnimationController _controller;
  late Animation<double> _lineAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 4),
    );

    _lineAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: size.width >= 900
            ? Stack(
              children: [
      //           Particles(
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
                                  fontSize: size.width * .03,
                                  fontweight: FontWeight.bold,
                                  color: whiteColor),
                            ),
                          ),
                          FadeInRight(
                            delay: Duration(milliseconds: 500),
                            child: Text(
                              "SKILLS",
                              style: normalFonts(
                                  fontSize: size.width * .03,
                                  fontweight: FontWeight.bold,
                                  color: greenColor),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 0.1,
                          top: size.height * 0.09,
                          bottom: size.width * .03
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // First ListView with staggered animation
                            Expanded(
                              flex: 2,
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return Align(
                                    alignment: Alignment.center,
                                    child: FadeIn(
                                      delay: Duration(milliseconds: 800 + index * 300),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                                        child: Container(
                                          width: size.width * 0.006, // Fixed width for the separator
                                          height: size.height * 0.03,
                                          decoration: BoxDecoration(
                                            color: greenColor.withOpacity(0.7),
                                            borderRadius: BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                color: greenColor,
                                                blurRadius: 10,
                                                spreadRadius: 2,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: skills1.length,
                                itemBuilder: (context, index) {
                                  return FadeInLeft(
                                    delay: Duration(milliseconds: 800 + index * 300),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: skillCard(context, skills1[index]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: size.width * 0.02),
                
                            // Second ListView with staggered animation
                            Expanded(
                              flex: 2,
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return Align(
                                    alignment: Alignment.center,
                                    child:FadeIn(
                                      delay: Duration(milliseconds: 3500 + index * 300),
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 5,bottom: 5),
                                        child: Container(
                                          width: size.width * 0.006, // Fixed width for the separator
                                          height: size.height * 0.03,
                                          decoration: BoxDecoration(
                                            color: greenColor.withOpacity(0.7),
                                            borderRadius: BorderRadius.circular(8),
                                            boxShadow: [
                                              BoxShadow(
                                                color: greenColor,
                                                blurRadius: 10,
                                                spreadRadius: 2,
                                                offset: Offset(0, 0),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: skill2.length,
                                itemBuilder: (context, index) {
                                  return FadeInRight(
                                    delay: Duration(milliseconds: 3500 + index * 300),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: skillCard(context, skill2[index]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            const Spacer(),
                            // Enhanced Image Animation
                            Padding(
                              padding: EdgeInsets.only(top: size.height * 0.1, right: size.width * 0.1),
                              child: BounceInDown(
                                delay: Duration(seconds: 1),
                                child: SizedBox(
                                  height: size.width * 0.2,
                                  width: size.width * 0.2,
                                  child: RevolvingImagesScreen(),
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
            //!======================================================phone
             Stack(
               children: [
      //           Particles(
      //   awayRadius: 50,
      //   particles: createParticlesPhone(),
      //   height: MediaQuery.of(context).size.height*1.2,
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
                      // Enhanced Image Animation at the top
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeInLeft(
                            delay: Duration(milliseconds: 500),
                            child: Text(
                              "MY ",
                              style: normalFonts(
                                  fontSize: size.width * .07,
                                  fontweight: FontWeight.bold,
                                  color: whiteColor),
                            ),
                          ),
                          FadeInRight(
                            delay: Duration(milliseconds: 500),
                            child: Text(
                              "SKILLS",
                              style: normalFonts(
                                  fontSize: size.width * .07,
                                  fontweight: FontWeight.bold,
                                  color: greenColor),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: size.height * 0.05),
                      BounceInDown(
                        delay: Duration(seconds: 1),
                        child: SizedBox(
                          height: size.width * .3,
                          width: size.width * .3,
                          child: RevolvingImagesScreen(),
                        ),
                      ),
                      SizedBox(height: size.height * 0.05),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // First ListView with staggered animation
                            Expanded(
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4,bottom: 4),
                                      child: SizedBox(
                                        width: size.width * 0.01, // Fixed width for the separator
                                        height: size.height * 0.03,
                                        child: FadeIn(
                                          delay: Duration(milliseconds: 300 + index * 200),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: greenColor.withOpacity(0.7),
                                              borderRadius: BorderRadius.circular(12)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: skills1.length,
                                itemBuilder: (context, index) {
                                  return FadeInLeft(
                                    delay: Duration(milliseconds: 300 + index * 200),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: skillCardMobile(context, skills1[index]),
                                    ),
                                  );
                                },
                              ),
                            ),
                            SizedBox(width: size.width * 0.05),
                            // Second ListView with staggered animation
                            Expanded(
                              child: ListView.separated(
                                separatorBuilder: (context, index) {
                                  return Align(
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(top: 4,bottom: 4),
                                      child: SizedBox(
                                        width: size.width * 0.01, // Fixed width for the separator
                                        height: size.height * 0.03,
                                        child: FadeIn(
                                          delay: Duration(milliseconds: 800 + index * 300),
                                          child: Container(
                                            decoration: BoxDecoration(
                                              color: greenColor.withOpacity(0.7),
                                              borderRadius: BorderRadius.circular(12)
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                },
                                physics: const NeverScrollableScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: skill2.length,
                                itemBuilder: (context, index) {
                                  return FadeInRight(
                                    delay: Duration(milliseconds: 800 + index * 300),
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: skillCardMobile(context, skill2[index]),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: size.width *.4 ,)
                    ],
                  ),
               ],
             ),
      ),
    );
  }
}
