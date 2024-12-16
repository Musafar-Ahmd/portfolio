import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_text_styles.dart';
import '../constants/colors.dart';

class MainMobile extends StatefulWidget {
  const MainMobile({super.key});

  @override
  State<MainMobile> createState() => _MainMobileState();
}

class _MainMobileState extends State<MainMobile> {
  final _url =
      'https://drive.google.com/file/d/1ulo6ZqhkMhlb7JiNTbZJG8QXXMKztQ-d/view?usp=sharing';

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 40.0,
        vertical: 30.0,
      ),
      height: screenHeight,
      constraints: const BoxConstraints(
        minHeight: 560.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(colors: [
                CustomColor.scaffoldBg.withOpacity(0.6),
                CustomColor.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/my_flutter_avatar.png",
              width: screenWidth,
            ),
          ),
          const SizedBox(height: 30),
          // intro message
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FadeInDown(
                duration: const Duration(milliseconds: 1200),
                child: Text(
                  'Hello, It\'s Me',
                  style: AppTextStyles.montserratStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: 15.0),
              FadeInRight(
                duration: const Duration(milliseconds: 1400),
                child: Text(
                  'Musafar Ahamed',
                  style: AppTextStyles.headingStyles(),
                ),
              ),
              FadeInLeft(
                duration: const Duration(milliseconds: 1400),
                child: Row(
                  children: [
                    Text(
                      'And I\'m a ',
                      style: AppTextStyles.montserratStyle(color: Colors.white),
                    ),
                    AnimatedTextKit(
                      animatedTexts: [
                        TyperAnimatedText(
                          'Flutter Developer',
                          textStyle: AppTextStyles.montserratStyle(
                              color: Colors.lightBlue),
                        ),
                        TyperAnimatedText('Freelancer',
                            textStyle: AppTextStyles.montserratStyle(
                                color: Colors.lightBlue)),
                      ],
                      pause: const Duration(milliseconds: 1000),
                      displayFullTextOnTap: true,
                      stopPauseOnTap: true,
                    )
                  ],
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                width: 250.0,
                child: ElevatedButton(
                  onPressed: () {
                    _launchURL(_url);
                  },
                  child: const Text(
                    "Download CV",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
