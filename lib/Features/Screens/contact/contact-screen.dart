import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';
import 'package:portfolio/Features/Screens/Home/home_screen.dart';
import 'package:portfolio/Features/Screens/contact/widgets/text_field.dart';
import 'package:portfolio/custom/custom_button.dart';
import 'package:particles_flutter/particles_engine.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  TextEditingController firstname = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController message = TextEditingController();
  bool isHover = false;

  final _formKey =
      GlobalKey<FormState>(); // Form key to access the state of the form

  // Function to launch WhatsApp with a message
  Future<void> _launchWhatsApp() async {
    String name = firstname.text;
    String userEmail = email.text;
    String userMessage = message.text;

    String url =
        "https://wa.me/919526232736?text=Hello%20my%20name%20is%20$name,%20Email:%20$userEmail.%20Here%20is%20my%20message:%20$userMessage";

    await launchUrlString(url);
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blackColor,
      body: SingleChildScrollView(
        child: size >= 900
            ? Stack(
                children: [
                  //           Particles(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FadeInLeft(
                            delay: Duration(milliseconds: 1200),
                            child: Text(
                              "CONTACT ",
                              style: normalFonts(
                                  fontSize: size * .03,
                                  fontweight: FontWeight.bold,
                                  color: whiteColor),
                            ),
                          ),
                          FadeInRight(
                            delay: Duration(milliseconds: 1200),
                            child: Text(
                              "ME",
                              style: normalFonts(
                                  fontSize: size * .03,
                                  fontweight: FontWeight.bold,
                                  color: greenColor),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: size * .03),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 300),
                        child: Form(
                          key: _formKey, // Assign the key to the form
                          child: Column(
                            children: [
                              FadeInLeft(
                                delay: Duration(milliseconds: 1700),
                                child: CustomTextFormField(
                                  controller: firstname,
                                  hintText: "Full Name",
                                  needExpand: false,
                                ),
                              ),
                              SizedBox(height: size * .01),
                              FadeInRight(
                                delay: Duration(milliseconds: 1800),
                                child: CustomTextFormField(
                                  controller: email,
                                  hintText: "Email",
                                  needExpand: false,
                                ),
                              ),
                              SizedBox(height: size * .01),
                              FadeIn(
                                delay: Duration(milliseconds: 2000),
                                child: CustomTextFormField(
                                  controller: message,
                                  hintText: "Message",
                                  needExpand: true,
                                ),
                              ),
                              SizedBox(height: size * .02),
                              FadeInUp(
                                duration: Duration(milliseconds: 2300),
                                child: customButton(
                                  context: context,
                                  ontap: () {
                                    if (_formKey.currentState!.validate()) {
                                      // If the form is valid, launch WhatsApp
                                      _launchWhatsApp();
                                    }
                                  },
                                  buttontext: "GET IN TOUCH",
                                  spread: isHover ? 5 : 2,
                                  blur: isHover ? 3 : 1,
                                  onEnter: (_) {
                                    setState(() {
                                      isHover = true;
                                    });
                                  },
                                  onExit: (_) {
                                    setState(() {
                                      isHover = false;
                                    });
                                  },
                                  horizontalpadding: isHover ? 15 : 12,
                                  verticlePadding: isHover ? 15 : 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : SingleChildScrollView(
                child: Stack(
                  children: [
                    //             Particles(
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
                              delay: Duration(milliseconds: 1200),
                              child: Text(
                                "CONTACT ",
                                style: normalFonts(
                                    fontSize: size * .07,
                                    fontweight: FontWeight.bold,
                                    color: whiteColor),
                              ),
                            ),
                            FadeInRight(
                              delay: Duration(milliseconds: 1200),
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
                        SizedBox(height: size * .2),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Form(
                            key:
                                _formKey, // Form key for mobile version as well
                            child: Column(
                              children: [
                                FadeInLeft(
                                  delay: Duration(milliseconds: 1700),
                                  child: CustomTextFormField(
                                    controller: firstname,
                                    hintText: "Full Name",
                                    needExpand: false,
                                  ),
                                ),
                                SizedBox(height: size * .02),
                                FadeInRight(
                                  delay: Duration(milliseconds: 1800),
                                  child: CustomTextFormField(
                                    controller: email,
                                    hintText: "Email",
                                    needExpand: false,
                                  ),
                                ),
                                SizedBox(height: size * .02),
                                FadeIn(
                                  delay: Duration(milliseconds: 2000),
                                  child: CustomTextFormField(
                                    controller: message,
                                    hintText: "Message",
                                    needExpand: true,
                                  ),
                                ),
                                SizedBox(height: size * .04),
                                FadeInUp(
                                  duration: Duration(milliseconds: 2300),
                                  child: customButtonMobile(
                                    ontap: () {
                                      if (_formKey.currentState!.validate()) {
                                        // If the form is valid, launch WhatsApp
                                        _launchWhatsApp();
                                      }
                                    },
                                    buttontext: "GET IN TOUCH",
                                    context: context,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).viewInsets.bottom > 0
                              ? MediaQuery.of(context).viewInsets.bottom
                              : size * .2,
                        )
                      ],
                    ),
                  ],
                ),
              ),
      ),
    );
  }
}
