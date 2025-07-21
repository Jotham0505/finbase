import 'package:flutter/material.dart';

class Onboarding7Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Text(
            "Spending Insights",
            style: TextStyle(
              fontFamily: "FiraSans",
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(
            height: 12,
          ),
          Stack(
            children: [
              Container(
                width: 340,
                height: 140,
                decoration: BoxDecoration(
                  color: Color(0xff2E2E2E),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 70,
                child: Column(
                  children: [
                    Text(
                      "\n\$2,315.34",
                      style: TextStyle(
                        fontFamily: "FiraSans",
                        fontSize: 50,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 251, 232, 157),
                      ),
                    ),
                    Text(
                      "average monthly spending",
                      style: TextStyle(
                        fontFamily: "FiraSans",
                        fontSize: 16,
                        color: Colors.white70,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Overall Monthly Spending",
            style: TextStyle(
              fontFamily: "FiraSans",
              fontSize: 24,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "In total you spend an average of \$2,315.34 per month across all your accounts. This includes all your expenses, bills, and subscriptions.",
            style: TextStyle(
              fontFamily: "FiraSans",
              fontSize: 16,
              color: Colors.black,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Spending Breakdown(monthly)",
            style: TextStyle(
              fontFamily: "FiraSans",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Container(
            width: double.infinity,
            height: 200,
            decoration: BoxDecoration(
              color: Color(0xff2E2E2E),
              borderRadius: BorderRadius.circular(16),
            ),
          ),
        ],
      ),
    ));
  }
}
