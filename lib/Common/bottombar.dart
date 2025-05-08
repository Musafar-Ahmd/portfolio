import 'package:animated_notch_bottom_bar/animated_notch_bottom_bar/animated_notch_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Features/Screens/about/about_me.dart' show AboutMeScreen;
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/selection.dart';
import 'package:portfolio/Features/Screens/Home/home_screen.dart';
import 'package:portfolio/Features/Screens/Services/service_screen.dart';
import 'package:portfolio/Features/Screens/about/about_me.dart';
import 'package:portfolio/Features/Screens/contact/contact-screen.dart';
import 'package:portfolio/Features/Screens/skills/skills.dart';

class BottomnavBarMobile extends StatefulWidget {
  const BottomnavBarMobile({super.key});

  @override
  State<BottomnavBarMobile> createState() => _BottomnavBarMobileState();
}

class _BottomnavBarMobileState extends State<BottomnavBarMobile> {
  final PageController _pageController = PageController(initialPage: selectedScreenIndex??0);
  final NotchBottomBarController _notchBottomBarController = NotchBottomBarController(index: selectedScreenIndex ?? 0);

  @override
  void initState() {
    super.initState();
    print(selectedScreenIndex);
  }

  final List<Widget> screens = [
    HomeScreen(),
    AboutMeScreen(),
    SkillScreen(),
    ServiceScreen(),
    ContactScreen()
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            // physics: NeverScrollableScrollPhysics(),
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                selectedScreenIndex = index;
                _notchBottomBarController.jumpTo(selectedScreenIndex ?? 0);
              });
            },
            children: screens,
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: AnimatedNotchBottomBar(
              notchColor: greenColor,
              color: greenColor,
              bottomBarWidth: size ,
              bottomBarHeight: size*.01,
              showBottomRadius: true,
              notchBottomBarController: _notchBottomBarController,
              bottomBarItems: const [
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.home_filled,
                    color: whiteColor,
                  ),
                  activeItem: Icon(
                    Icons.home_filled,
                    color: whiteColor,
                  ),
                itemLabel: ""
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.person,
                    color: whiteColor,
                  ),
                  activeItem: Icon(
                    Icons.person,
                    color: whiteColor,
                  ),
                  itemLabel: '',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.laptop_windows_outlined,
                    color: whiteColor,
                  ),
                  activeItem: Icon(
                    Icons.laptop_windows_outlined,
                    color: whiteColor,
                  ),
                  itemLabel: '',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.work,
                    color: whiteColor,
                  ),
                  activeItem: Icon(
                    Icons.work,
                    color: whiteColor,
                  ),
                  itemLabel: '',
                ),
                BottomBarItem(
                  inActiveItem: Icon(
                    Icons.contacts_sharp,
                    color: whiteColor,
                  ),
                  activeItem: Icon(
                    Icons.contacts_sharp,
                    color: whiteColor,
                  ),
                  itemLabel: '',
                ),
              ],
              onTap: (index) {
                setState(() {
                  selectedScreenIndex = index;
                  _pageController.jumpToPage(selectedScreenIndex ??0);
                });
              },
              kIconSize: size *.01,
              kBottomRadius: 20,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Profile Tab'));
  }
}

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Search Tab'));
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text('Home Tab'));
  }
}
