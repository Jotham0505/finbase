import 'package:flutter/material.dart';

class Onboarding6Screen extends StatelessWidget {
  const Onboarding6Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2E292E),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Spending Insights",
              style: TextStyle(
                fontFamily: "FiraSans",
                fontSize: 28,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(24), // Curved border
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              clipBehavior:
                  Clip.antiAlias, // Ensures child is clipped to border radius
              child: Image.asset("assets/pie.png", fit: BoxFit.fill),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Summary Monthly Spending",
              style: TextStyle(
                fontFamily: "FiraSans",
                fontSize: 23,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Miscellaneous items like vending machines, Amazon.com, and night clubs make up 15% of your spending on a monthly basis",
              style: TextStyle(
                fontFamily: "FiraSans",
                fontSize: 16,
                color: Colors.white,
              ),
            ),
            Spacer(),
            GestureDetector(
              onTap: () {
                // nest screen i.e onboarding screen 2
              },
              child: Container(
                height: 44,
                width: 320,
                decoration: BoxDecoration(
                    color: Color(0xFF0B8467),
                    borderRadius: BorderRadius.circular(10)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Next Insights",
                      style: TextStyle(
                          fontFamily: "FiraSans",
                          color: Colors.white,
                          fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
