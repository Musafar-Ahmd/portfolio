import 'dart:math';

import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';

class RevolvingImagesScreen extends StatefulWidget {
  const RevolvingImagesScreen({super.key});

  @override
  _RevolvingImagesScreenState createState() => _RevolvingImagesScreenState();
}

class _RevolvingImagesScreenState extends State<RevolvingImagesScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      alignment: Alignment.center,
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Central Image
          SizedBox(
            height: size.width * 0.2,
            width: size.width * 0.2,
            child: Image.asset('assets/images/skill3.png',),
          ),

          // Orbiting Image 1
          AnimatedBuilder(
            animation: _controller,
            child: SizedBox(
              height: size.width * 0.05,
              width: size.width * 0.05,
              child: Image.asset('assets/images/flutter.png',fit: BoxFit.fill,),
            ),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  size.width * 0.15 * cos(_controller.value * 2 * pi),
                  size.width * 0.15 * sin(_controller.value * 2 * pi),
                ),
                child: child,
              );
            },
          ),

          // Orbiting Image 2
          AnimatedBuilder(
            animation: _controller,
            child: SizedBox(
              height: size.width * 0.05,
              width: size.width * 0.05,
              child: Image.asset('assets/images/dart.png',fit: BoxFit.fill,),
            ),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  size.width * 0.15 * cos(_controller.value * 2 * pi + pi / 2),
                  size.width * 0.15 * sin(_controller.value * 2 * pi + pi / 2),
                ),
                child: child,
              );
            },
          ),

          // Orbiting Image 3
          AnimatedBuilder(
            animation: _controller,
            child: SizedBox(
              height: size.width * 0.05,
              width: size.width * 0.05,
              child: Image.asset('assets/images/android.png',fit: BoxFit.fill,),
            ),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  size.width * 0.15 * cos(_controller.value * 2 * pi + pi),
                  size.width * 0.15 * sin(_controller.value * 2 * pi + pi),
                ),
                child: child,
              );
            },
          ),

          // Orbiting Image 4
          AnimatedBuilder(
            animation: _controller,
            child: SizedBox(
              height: size.width * 0.05,
              width: size.width * 0.05,
              child: Image.asset('assets/images/ios.png',color: whiteColor,fit: BoxFit.fill,),
            ),
            builder: (context, child) {
              return Transform.translate(
                offset: Offset(
                  size.width * 0.15 * cos(_controller.value * 2 * pi + 3 * pi / 2),
                  size.width * 0.15 * sin(_controller.value * 2 * pi + 3 * pi / 2),
                ),
                child: child,
              );
            },
          ),
        ],
      ),
    );
  }
}
