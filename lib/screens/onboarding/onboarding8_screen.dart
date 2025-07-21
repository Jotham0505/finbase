import 'package:flutter/material.dart';

class Onboarding8Screen extends StatelessWidget {
  const Onboarding8Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/goal.png",
              height: 300,
            ),
            Text(
              "Set a Savings Goals",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
