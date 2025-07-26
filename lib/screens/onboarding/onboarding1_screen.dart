import 'package:flutter/material.dart';

class Onboarding1Screen extends StatelessWidget {
  const Onboarding1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2E292E),
      body: Column(
        children: [
          SizedBox(
            height: 60,
          ),
          Center(
            child: Image.asset(
              "assets/logo.png",
              height: 60,
            ),
          ),
          SizedBox(
            height: 60,
          ),
          Stack(
            children: [
              Center(
                child: Image.asset(
                  "assets/ellipse.png",
                  height: 260,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/badge2.png",
                    height: 130,
                  ),
                  SizedBox(
                    width: 35,
                  ),
                  Image.asset(
                    "assets/badge3.png",
                    height: 130,
                  ),
                ],
              ),
              Center(
                child: Image.asset(
                  "assets/badge1.png", // badge 1 design
                  height: 140,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Welcome to Finbase!",
                style: TextStyle(
                  fontFamily: "FiraSans",
                  fontSize: 26,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                "Our mission is to help you achieve as many",
                style: TextStyle(
                  fontFamily: "FiraSans",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                "of your financial goals as possible,by",
                style: TextStyle(
                  fontFamily: "FiraSans",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              Text(
                "consistently building reliable habits.",
                style: TextStyle(
                  fontFamily: "FiraSans",
                  fontSize: 16,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Text(
                "Firstly, what should we call you?",
                style: TextStyle(
                  fontFamily: "FiraSans",
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 44,
                width: 300,
                child: TextFormField(
                  //controller: controller,
                  //obscureText: isobscure,
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(
                            0xFF0B8467), // Change this to your desired color
                        width: 2.0,
                      ),
                    ),
                    labelText: "Your name",
                    labelStyle: TextStyle(
                      fontFamily: 'FiraSans',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color(0xFF0B8467),
                        width: 2.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 236, 230, 230),
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 45,
              ),
              GestureDetector(
                onTap: () {
                  // nest screen i.e onboarding screen 2
                },
                child: Container(
                  height: 44,
                  width: 300,
                  decoration: BoxDecoration(
                      color: Color(0xFF0B8467),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Continue",
                        style: TextStyle(
                            fontFamily: "FiraSans",
                            color: Colors.white,
                            fontSize: 16),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 15,
                      )
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
