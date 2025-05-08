import 'package:animated_rotating_widget/animated_rotating_widget.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';
import 'package:portfolio/Common/selection.dart';
import 'package:portfolio/Features/Screens/Home/home_screen.dart';
import 'package:portfolio/Features/Screens/Services/service_screen.dart';
import 'package:portfolio/Features/Screens/about/about_me.dart';
import 'package:portfolio/Features/Screens/contact/contact-screen.dart';
import 'package:portfolio/Features/Screens/skills/skills.dart';

class NavbarWeb extends StatefulWidget {
  @override
  _NavbarWebState createState() => _NavbarWebState();
}

class _NavbarWebState extends State<NavbarWeb>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  int selectedIndex = selectedScreenIndex ?? 0;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: selectedIndex,
    );

    // Add listener to update selectedIndex when scrolling
    _tabController.addListener(() {
        setState(() {
          selectedIndex = _tabController.index;
          selectedScreenIndex = _tabController.index;
        });
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: blackColor,
      appBar: AppBar(
        toolbarHeight: screenSize *.06,
        title: Row(
          children: [
            Container(
              margin: EdgeInsets.only(top: 12),
              width: screenSize * .06,
              height:screenSize * .06 ,
              child: AnimatedRotatingWidget(
                 duration: Duration(seconds: 3),
                child: Image.asset(
                  'assets/images/logoNew.png',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: screenSize*.01,),
            Container(
              // color: whiteColor,
  width: screenSize*.15,
  height: screenSize*.03,
  child: Center(
    child: DefaultTextStyle(
      style:  styledFont(fontSize: screenSize*.025, fontweight: FontWeight.bold, color:greenColor),
      child: AnimatedTextKit(
        repeatForever: true,
        animatedTexts: [
          ScaleAnimatedText('Run 🏃'),
          ScaleAnimatedText('Loot 💰'),
          ScaleAnimatedText('Die 💀'),
          ScaleAnimatedText('Repeat ♻️'),
        ],
        onTap: () {
          print("Tap Event");
        },
      ),
    ),
  ),
),
            Spacer(),
            SizedBox(width: 16),
            TabBar(
              onTap: (index) {
                setState(() {
                  selectedIndex = index;
                  selectedScreenIndex = index;
                });
              },
              splashBorderRadius: BorderRadius.circular(20),
              indicatorColor: Colors.transparent,
              dividerColor: Colors.transparent,
              controller: _tabController,
              isScrollable: true,
              tabs: [
                Tab(text: 'Home'),
                Tab(text: 'About Me'),
                Tab(text: 'Skills'),
                Tab(text: 'Services'),
                Tab(text: 'Contact'),
              ],
              labelStyle: appbarFontMain(
                fontSize: screenSize * .01,
                fontweight: FontWeight.w400,
              ),
              labelColor: greenColor,
              unselectedLabelColor: whiteColor,
            ),
          ],
        ),
        backgroundColor: blackColor,
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          HomeScreen(),
          AboutMeScreen(),
          SkillScreen(),
          ServiceScreen(),
          ContactScreen()
        ],
      ),
    );
  }
}

class HomeTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Home Tab Content'),
    );
  }
}

class SearchTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Search Tab Content'),
    );
  }
}
