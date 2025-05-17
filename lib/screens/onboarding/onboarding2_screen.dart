import 'package:flutter/material.dart';

class Onboarding2Screen extends StatelessWidget {
  const Onboarding2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Container(
            width: 360,
            height: 200,
            child: Image.asset("assets/banner.png"),
          ),
          Text(
            "Connect your account",
            style: TextStyle(),
          ),
        ],
      ),
    );
  }
}
