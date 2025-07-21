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
              Center(
                child: Positioned(
                  height: 10,
                  child: Text("2,315.34",
                      style: TextStyle(
                        fontFamily: "FiraSans",
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      )),
                ),
              ),
            ],
          )
        ],
      ),
    ));
  }
}
