import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_splash_screen/main.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => MyHomePage(
                  title: "Home Page",
                ))));
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.sizeOf(context);
    var screenWidth = screenSize.width;
    var screenHeight = screenSize.height;
    return Scaffold(
        body: Center(
            child: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: screenWidth * 0.8,
            height: screenHeight * 0.35,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/splash_screen.png"),
                    fit: BoxFit.fill)),
          ),
          Text("A Project By :",
              style: GoogleFonts.caveat(
                  color: Colors.brown.shade300,
                  fontSize: screenHeight * 0.035,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.white.withOpacity(0.5),
                      offset: Offset(-10, -10),
                    ),
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.pinkAccent.withOpacity(0.4),
                      offset: Offset(4, 4),
                    )
                  ])),
          SizedBox(
            height: screenHeight * 0.05,
          ),
          Text("MASK Group of Companies :",
              style: GoogleFonts.caveat(
                  color: Colors.brown.shade300,
                  fontSize: screenHeight * 0.035,
                  fontWeight: FontWeight.bold,
                  shadows: [
                    BoxShadow(
                      blurRadius: 10,
                      color: Colors.white.withOpacity(0.5),
                      offset: Offset(-10, -10),
                    ),
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.pinkAccent.withOpacity(0.4),
                      offset: Offset(4, 4),
                    )
                  ])),
        ],
      ),
    )));
  }
}
