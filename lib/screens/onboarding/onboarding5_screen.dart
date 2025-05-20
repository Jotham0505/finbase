import 'package:flutter/material.dart';

class Onboarding5Screen extends StatelessWidget {
  const Onboarding5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Spending Insights",
                style: TextStyle(
                  fontFamily: "FiraSans",
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Stack(
                children: [
                  Container(
                    height: 260,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Color(0xFF2E2E2E),
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 125, horizontal: 25),
                    child: Row(
                      children: [
                        Container(
                          height: 86,
                          width: 37,
                          decoration: BoxDecoration(
                            color: Colors.white, //Color(0xFF2E2E2E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 45,
                          width: 37,
                          decoration: BoxDecoration(
                            color: Colors.white, //Color(0xFF2E2E2E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Container(
                          height: 86,
                          width: 37,
                          decoration: BoxDecoration(
                            color: Colors.white, //Color(0xFF2E2E2E),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
