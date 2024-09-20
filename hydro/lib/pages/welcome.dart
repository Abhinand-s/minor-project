import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hydro/pages/homescreen.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Full Background Image (visible)
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    "assets/background1.jpg"), // Full eco-friendly background image
                fit: BoxFit.cover, // Ensures image covers the whole screen
              ),
            ),
          ),
          // Darker Gradient Overlay for better text visibility
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(0.6),
                    Colors.black.withOpacity(0.4)
                  ], // Darkened gradient
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          // Slight Blur Overlay for text clarity
          Positioned.fill(
            child: BackdropFilter(
              filter: ImageFilter.blur(
                  sigmaX: 2, sigmaY: 2), // Slight blur for clarity
              child: Container(
                color: Colors.black.withOpacity(0.15), // Light dark overlay
              ),
            ),
          ),
          // Main content
          Center(
            child: SingleChildScrollView(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Header with fade-in animation and shadow
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 1),
                    builder: (context, double opacity, child) {
                      return Opacity(
                        opacity: opacity,
                        child: child,
                      );
                    },
                    child: Text(
                      "Welcome",
                      style: GoogleFonts.raleway(
                        fontSize: 42,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 2.0),
                            blurRadius: 5.0,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  // Subheader about Hydroponics with shadow
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 1),
                    builder: (context, double opacity, child) {
                      return Opacity(
                        opacity: opacity,
                        child: child,
                      );
                    },
                    child: Text(
                      "Hydroponics Made Simple",
                      style: GoogleFonts.raleway(
                        fontSize: 22,
                        color: Colors.greenAccent[100],
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 1.0),
                            blurRadius: 3.0,
                            color: Colors.black.withOpacity(0.6),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Short description about Hydroponics with improved visibility
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 1),
                    builder: (context, double opacity, child) {
                      return Opacity(
                        opacity: opacity,
                        child: child,
                      );
                    },
                    child: Text(
                      "Hydroponics is a method of growing plants without soil, using mineral nutrient solutions in a water solvent. "
                      "This modern farming technique allows faster growth, uses less water, and requires minimal space.",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.raleway(
                        fontSize: 18, // Increased font size
                        color: Colors.white, // Brighter white color for text
                        shadows: [
                          Shadow(
                            offset: Offset(0.0, 1.0),
                            blurRadius: 4.0,
                            color: Colors.black.withOpacity(0.7),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  // Benefits of Hydroponics with readable text
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 1),
                    builder: (context, double opacity, child) {
                      return Opacity(
                        opacity: opacity,
                        child: child,
                      );
                    },
                    child: Column(
                      children: [
                        Icon(Icons.eco,
                            size: 40, color: Colors.greenAccent[100]),
                        SizedBox(height: 10),
                        Text(
                          "Why Choose Hydroponics?",
                          style: GoogleFonts.raleway(
                            fontSize: 24,
                            color: Colors.greenAccent[100],
                            fontWeight: FontWeight.bold,
                            shadows: [
                              Shadow(
                                offset: Offset(0.0, 2.0),
                                blurRadius: 4.0,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "• Save up to 90% of water compared to soil farming\n"
                          "• Grow plants faster and harvest more\n"
                          "• Utilize small spaces like rooftops or balconies\n"
                          "• No need for pesticides, making it eco-friendly",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.raleway(
                            fontSize: 16,
                            color: Colors.white, // More visible text color
                            shadows: [
                              Shadow(
                                offset: Offset(0.0, 1.0),
                                blurRadius: 3.0,
                                color: Colors.black.withOpacity(0.7),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 60),
                  // Enhanced Get Started Button with a solid green color
                  TweenAnimationBuilder(
                    tween: Tween<double>(begin: 0, end: 1),
                    duration: Duration(seconds: 1),
                    builder: (context, double opacity, child) {
                      return Opacity(
                        opacity: opacity,
                        child: child,
                      );
                    },
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        backgroundColor:
                            Colors.green[700], // Solid green button
                        elevation: 5, // Button shadow for depth
                      ),
                      onPressed: () {
                        // Action for Get Started button - Navigate to HomeScreen
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Text(
                        'Get Started',
                        style: GoogleFonts.raleway(
                          fontSize: 20,
                          color: Colors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(0.0, 2.0),
                              blurRadius: 4.0,
                              color: Colors.black.withOpacity(0.7),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
