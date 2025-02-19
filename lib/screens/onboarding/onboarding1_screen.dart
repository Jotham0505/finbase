import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 60,
            ),
          ),
          SizedBox(
            height: 120,
          ),
          Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/ellipse.png",
                  height: 220,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/badge2.png",
                    height: 120,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Image.asset(
                    "assets/badge3.png",
                    height: 120,
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  "assets/badge1.png",
                  height: 120,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
