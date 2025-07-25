import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Onboarding5Screen extends StatelessWidget {
  const Onboarding5Screen({super.key});

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
              child: Image.asset("assets/graph2.png", fit: BoxFit.fill),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Food Spending",
              style: TextStyle(
                fontFamily: "FiraSans",
                fontSize: 22,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Food spending makes up 42% of your monthly spending, with the highest month being April, where you spent 26% more than average.",
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
