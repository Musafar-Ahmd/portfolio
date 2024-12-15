import 'package:animate_do/animate_do.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_text_styles.dart';

class MainDesktop extends StatefulWidget {
  const MainDesktop({super.key});

  @override
  State<MainDesktop> createState() => _MainDesktopState();
}

class _MainDesktopState extends State<MainDesktop> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenHeight = screenSize.height;
    final screenWidth = screenSize.width;

    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 20.0,
      ),
      height: screenHeight / 1.2,
      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
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
                  onPressed: () => openWhatsApp,
                  child: const Text("Get in touch"),
                ),
              )
            ],
          ),
          // avatar img
          Image.asset(
            "assets/my_flutter_avatar.png",
            width: screenWidth / 2,
          ),
        ],
      ),
    );
  }

  Future<void> openWhatsApp() async {
    final String phoneNumber = "+919526232736";
    final String message =
        Uri.encodeComponent("Hello, I would like to get in touch with you.");
    final String whatsappUrl = "https://wa.me/$phoneNumber?text=$message";

    if (await canLaunch(whatsappUrl)) {
      await launch(whatsappUrl);
    } else {
      // Handle the case when WhatsApp cannot be launched
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Unable to open WhatsApp")),
      );
    }
  }
}
