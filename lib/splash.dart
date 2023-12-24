import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePath = "assets/images/logo.png";
    const imagePath2 = "assets/images/puppets_black.png";
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Stack(
            children: [
              Positioned(
                top: 0.0, // Adjust position if needed
                left: 0.0, // Adjust position if needed
                right: 0.0, // Adjust position if needed
                bottom: 0.0, // Adjust position if needed
                child: Center(
                    child: SizedBox(width: 256, child: Image.asset(imagePath))),
              ),
              Positioned(
                left: 0.0,
                right: 0.0,
                bottom: 64.0,
                child: Center(
                  child: Column(
                    children: [
                      const Text('from'),
                      SizedBox(width: 64, child: Image.asset(imagePath2))
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
