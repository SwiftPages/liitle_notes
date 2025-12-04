import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

void main() {
  runApp(const MyApp());
}

// -------------------------------------------
// MAIN APP
// -------------------------------------------
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoaderPage(),
    );
  }
}
// -------------------------------------------
// LOADER PAGE
// -------------------------------------------
class LoaderPage extends StatefulWidget {
  const LoaderPage({super.key});

  @override
  State<LoaderPage> createState() => _LoaderPageState();
}

class _LoaderPageState extends State<LoaderPage> {

  @override
  void initState() {
    super.initState();

    // Auto navigate to home page after 2 seconds
    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomePage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // BACKGROUND
          Positioned.fill(
            child: Image.asset(
              "assets/bg.png",
              fit: BoxFit.cover, // change to BoxFit.fill if PNG gets cropped
            ),
          ),
          SizedBox(height: 150),
          // FOREGROUND CONTENT (centered)
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // LOGO
                Image.asset(
                  "assets/logo.png",
                  height: 200,
                ),

                SizedBox(height: 150),

                // LOADER
                LoadingAnimationWidget.discreteCircle(
                  color: Color(0xFFFF997A),
                  secondRingColor: Color(0xFFFEEAD4),
                  thirdRingColor: Color(0xFFFFFFFF),
                  size: 40, // adjust size here
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

}

// -------------------------------------------
// HOME PAGE
// -------------------------------------------
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // Cute images
  final List<String> cuteImages = const [
    "assets/bunny.png",
    "assets/frog.png",
    "assets/2 1.png",
    "assets/3 1.png",
    "assets/4 1.png",
    "assets/6 1.png",
    "assets/7 1.png",
    "assets/8 1.png",
    "assets/9 1.png",
    "assets/10 1.png",
    "assets/11 1.png",
    "assets/12 1.png",
    "assets/13 1.png",
    "assets/14 1.png",
    "assets/15 1.png",
    "assets/16 1.png",
    "assets/17 1.png",
    "assets/18 1.png",
    "assets/19 1.png",
    "assets/20 1.png",
  ];

  // Cute quotes
  final List<String> cuteQuotes = const [
    "Your ass must get jealous of all the shit that comes out of your mouth.",
    "You talk so much shit. I don't know whether to offer you a peppermint or a toilet paper.",
    "You look like something I drew with my left hand.",
    "Really? You're the sperm that won?",
    "Audacity must be on sale this year.",
    "My silence doesn't mean I agree with you. It means your level of stupidity has made me speechless.",
    "Do take care of your eyes because they are the only balls you have.",
    "All the cocaine in the world and your nose is still on my business.",
    "7000 languages in the world and you decide you wanna talk shit.",
    "Damn, you must have alzheimer because I think you forgot your place.",
    "With all due respect, which is none.",
    "You're the reason god created middle finger.",
    "Vision so bad I saw the good in you.",
    "Oh darling, go buy a personality.",
    "Calm down unsaved number.",
    "You remind me of a penny. Worthless, two-faced and inside everyone's pants.",
    "I'm jealous of all the people who haven't met you.",
    "Your birth certificate is an apology letter.",
    "I tried to put myself in your shoe but they were cheap and ugly, just like you.",
    "I bet your parents change the subject when their friends ask about you.",
    "You have such a unique way of misunderstanding things.",
    "I hope you heal from whatever compelled you to say that.",
    "No need to repeat yourself. I ignored you just fine the first time.",
    "I envy how you're never weighed down by self-awareness.",
    "You look like one of those babies that slept on its face a lot.",
    "If you had brain eating bacteria it would starve.",
    "You look like God submitted you at 23:59.",
    "You have a lot of room to raise your eyebrows.",
    "You talk a lot for someone nobody listens to.",
    "God just be making anybody.",
    "Why don't you act like your hairline and take a stepback?",
    "Knowledge is chasing you but you are faster.",
    "Do teachers speak softer to you?",
    "You look like your spirit animal has rabies.",
    "You look like you snuck onto earth.",
    "I wish your parents loved you more as a child.",
    "Just because your parents made a mistake doesn't mean I gotta fix you.",
  ];

  @override
  Widget build(BuildContext context) {

    // Pick random image + quote
    final random = Random();
    final randomImage = cuteImages[random.nextInt(cuteImages.length)];
    final randomQuote = cuteQuotes[random.nextInt(cuteQuotes.length)];

    return Scaffold(
      body: Stack(
        children: [
          // Background
          Positioned.fill(
            child: Image.asset(
              "assets/bg.png",
              fit: BoxFit.cover,
            ),
          ),

          // Page content
          SafeArea(
            child: Column(
              children: [
                // 🔹 HEADER with background
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFEFEF),
                  ),
                  child: Center(
                    child: Image.asset(
                      "assets/logo.png",
                      height: 130,
                    ),
                  ),
                ),

                const SizedBox(height: 50),

                // 🔹 Middle cute bunny image
                Image.asset(
                  randomImage,
                  height: 200,
                ),

                const SizedBox(height: 80),

                // 🔹 Quote box
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Container(
                    height: 160,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: const Color(0xFFFFEFEF),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 40,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: const Color(0xFFF7B3A6),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(18),
                                topRight: Radius.circular(18),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 10.0, left: 90, bottom: 8.0),
                              child: Text(
                                "Note of the Day!!",
                                style: const TextStyle(
                                  fontSize: 20,
                                  height: 1,
                                  color: Color(0xFFFFFFFF),
                                  fontFamily: 'cutefont',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          const SizedBox(height: 10),

                          Padding(
                            padding: const EdgeInsets.only(
                                left: 14.0, top: 4.0, right: 8.0),
                            child: Text(
                              randomQuote,
                              style: const TextStyle(
                                fontSize: 18,
                                height: 1.28,
                                color: Color(0xFF3B3B3B),
                                fontFamily: 'cutefont',
                                fontWeight: FontWeight.normal,
                              ),
                              maxLines: 4,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),
              ],
            ),
          ),

          // 🔥 FIXED FLOATING ABOUT BUTTON (BOTTOM RIGHT)
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.02,  // ~3% from bottom
            right: MediaQuery.of(context).size.width * 0.07,    // ~4% from right
            child: GestureDetector(
              onTap: () => _showAboutPopup(context),
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Color(0xFFFFEFEF),
                  shape: BoxShape.circle,
                ),
                child: Icon(
                  Icons.info_outline,
                  size: 24,
                  color: Color(0xFFFF997A),
                ),
              ),
            ),
          ),
          // Positioned(
          //   bottom: MediaQuery.of(context).size.height * 0.02,  // ~3% from bottom
          //   left: MediaQuery.of(context).size.width * 0.07,    // ~4% from right
          //   child: GestureDetector(
          //     onTap: () => _showAboutPopup(context),
          //     child: Container(
          //       padding: const EdgeInsets.all(10),
          //       decoration: BoxDecoration(
          //         color: Color(0xFFFFEFEF),
          //         shape: BoxShape.circle,
          //       ),
          //       child: Icon(
          //         Icons.info_outline,
          //         size: 24,
          //         color: Color(0xFFFF997A),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
void _showAboutPopup(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
    ),
    builder: (context) {
      return Container(
        padding: const EdgeInsets.all(25),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(28)),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              blurRadius: 10,
              offset: Offset(0, -2),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 50,
              height: 5,
              decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            SizedBox(height: 20),

            Image.asset("assets/logo.png", height: 60),

            SizedBox(height: 15),

            Text(
              "Little Notes",
              style: TextStyle(
                fontSize: 22,
                fontFamily: 'cutefont',
                fontWeight: FontWeight.w700,
                color: Color(0xFF333333),
              ),
            ),

            SizedBox(height: 8),

            Text(
              "Version 1.0.0",
              style: TextStyle(fontSize: 14, color: Colors.grey, fontFamily: 'cutefont'),
            ),

            SizedBox(height: 15),

            Text(
              "Made with love by Me to You ❤️",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'cutefont',
                height: 1.4,
                color: Color(0xFF555555),
              ),
            ),

            SizedBox(height: 10),

            Text(
              "Specially for you my Tizzs 🩷 Whenever you miss me just open this app and I will be there with you 🫶",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'cutefont',
                  height: 1.4,
                  color: Colors.grey
              ),
            ),
          ],
        ),
      );
    },
  );
}

