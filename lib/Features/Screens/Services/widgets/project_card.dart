import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/Common/colors.dart';
import 'package:portfolio/Common/google_fonts.dart';
import 'package:portfolio/Features/Screens/Services/widgets/description.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  List<bool> hoveredPlaystore = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<bool> hoveredAppstore = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  List<String> names = [
    "Bestie",
    "DAY 7 MART",
    "InPOS",
    "Alshumoo",
    "AILTS",
    "VM Store",
    "LakAmana",
  ];
  List<String> descriptions = [
    des7,
    dis1,
    dis2,
    des3,
    des4,
    des5,
    des6,
  ];
  List<String> images = [
    "assets/images/bestienew.png",
    "assets/images/day7.png",
    "assets/images/inpos.png",
    "assets/images/shumoo.png",
    "assets/images/toys.png",
    "assets/images/vmstore.png",
    "assets/images/lakamana.png",
  ];

  // URLs for Play Store and App Store
  List<String?> playStoreLinks = [
    "https://play.google.com/store/apps/details?id=com.bestie.user",
    "https://play.google.com/store/apps/details?id=com.daytoday.fresh",
    "https://play.google.com/store/apps/details?id=com.innerix.inpos&hl=en-IN",
    "https://play.google.com/store/apps/details?id=com.alshumoo.ecom",
    'https://drive.google.com/drive/folders/11mCmKZwncriKb9vDSqI9yF2ijrii1MVO',
    "https://play.google.com/store/apps/details?id=com.innerix.vmstore&hl=en-IN",
    "https://play.google.com/store/apps/details?id=com.innerix.lakamana&hl=en-IN",
  ];

  List<String?> appStoreLinks = [
    null,
    null,
    null,
    "https://apps.apple.com/in/app/shumoo/id6480279795",
    null,
    null,
    null,
  ];

  // Set to track which cards and buttons are being hovered over
  Set<int> _hoveredCards = {};
  int? _hoveredButtonIndex; // Track the hovered button index

  // Function to launch URLs
  Future<void> _launchURL(String url) async {
    await launchUrlString(url);
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;

    // Determine the number of columns based on screen width
    int crossAxisCount;
    if (screenWidth > 1200) {
      crossAxisCount = 4; // Desktop
    } else if (screenWidth > 800) {
      crossAxisCount = 3; // Tablet
    } else {
      crossAxisCount = 2; // Mobile
    }

    // Adjusting font size based on screen width
    double fontSize = screenWidth > 800 ? 18 : 14;
    FontWeight fontWeight =
        screenWidth > 800 ? FontWeight.bold : FontWeight.normal;
    Color color = Colors.white;

    return Padding(
      padding: const EdgeInsets.all(20),
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12.0,
          mainAxisSpacing: 12.0,
          childAspectRatio: screenWidth > 900 ? 0.75 : 0.65,
        ),
        itemCount: names.length,
        itemBuilder: (context, index) {
          bool isHovered = _hoveredCards.contains(index);

          return MouseRegion(
            onEnter: (_) => setState(() => _hoveredCards.add(index)),
            onExit: (_) => setState(() => _hoveredCards.remove(index)),
            child: FlipCard(
              direction: FlipDirection.HORIZONTAL,
              front: Container(
                decoration: BoxDecoration(
                  color: blackColor,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: isHovered ? greenColor : whiteColor,
                      spreadRadius: isHovered ? 4 : .5,
                      blurRadius: isHovered ? 10 : 2,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    if (images[index].isNotEmpty)
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          images[index],
                          height: 100.0,
                          width: 100.0,
                        ),
                      ),
                    const SizedBox(height: 10.0),
                    Text(
                      names[index],
                      style: normalFonts(
                        fontSize: fontSize,
                        fontweight: fontWeight,
                        color: color,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    // Add Play Store and App Store containers with icons
                    if (playStoreLinks[index] != null)
                      MouseRegion(
                        onEnter: (_) =>
                            setState(() => hoveredPlaystore[index] = true),
                        onExit: (_) =>
                            setState(() => hoveredPlaystore[index] = false),
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => _launchURL(playStoreLinks[index]!),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            margin: const EdgeInsets.only(bottom: 8.0),
                            decoration: BoxDecoration(
                              color: greenColor,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: hoveredPlaystore[index]
                                  ? [
                                      BoxShadow(
                                        color: greenColor.withOpacity(0.7),
                                        spreadRadius: 3,
                                        blurRadius: 8,
                                      ),
                                    ]
                                  : [],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/android.png',
                                  // Path to your Android icon
                                  height: 20.0,
                                  width: 20.0,
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  "Android",
                                  style: normalFonts(
                                    fontSize: fontSize,
                                    fontweight: fontWeight,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    if (appStoreLinks[index] != null)
                      MouseRegion(
                        onEnter: (_) =>
                            setState(() => hoveredAppstore[index] = true),
                        onExit: (_) =>
                            setState(() => hoveredAppstore[index] = false),
                        cursor: SystemMouseCursors.click,
                        child: GestureDetector(
                          onTap: () => _launchURL(appStoreLinks[index]!),
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                vertical: 8.0, horizontal: 16.0),
                            decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: hoveredAppstore[index]
                                  ? [
                                      BoxShadow(
                                        color: Colors.blue.withOpacity(0.7),
                                        spreadRadius: 3,
                                        blurRadius: 8,
                                      ),
                                    ]
                                  : [],
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                  'assets/images/ios.png',
                                  // Path to your iOS icon
                                  height: 20.0,
                                  width: 20.0,
                                ),
                                const SizedBox(width: 8.0),
                                Text(
                                  "iOS",
                                  style: normalFonts(
                                    fontSize: fontSize,
                                    fontweight: fontWeight,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
              ),
              back: Container(
                decoration: BoxDecoration(
                  color: blackColor,
                  borderRadius: BorderRadius.circular(10.0),
                  boxShadow: [
                    BoxShadow(
                      color: isHovered ? greenColor : whiteColor,
                      spreadRadius: isHovered ? 4 : .5,
                      blurRadius: isHovered ? 10 : 2,
                    ),
                  ],
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SingleChildScrollView(
                      child: Text(
                        descriptions[index],
                        style: normalFonts1(
                          fontSize: fontSize,
                          fontweight: fontWeight,
                          color: color,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
