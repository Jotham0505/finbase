import 'package:flutter/material.dart';

class Onboarding7Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff2E292E),
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
                  color: Colors.white,
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
                      color: Color(0xff202020),
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
                  color: Colors.white,
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
                  color: Colors.white,
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
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Color(0xff0B8467)),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: BorderSide.none,
                    ),
                    prefixIcon: Icon(Icons.money_outlined),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Don't worry, you can always change this later.",
                style: TextStyle(
                  fontFamily: "FiraSans",
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
              Spacer(),
              GestureDetector(
                onTap: () {
                  // nest screen i.e onboarding screen 2
                },
                child: Container(
                  height: 44,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Color(0xFF0B8467),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Set a Goal",
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
        ));
  }
}
