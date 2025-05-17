import 'package:flutter/material.dart';

class Onboarding3Screen extends StatelessWidget {
  const Onboarding3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          Center(
            child: Container(
              width: 320,
              height: 200,
              child: Image.asset("assets/banner.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Connect your account",
                    style: TextStyle(
                        fontFamily: "FiraSans",
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Text(
                    "The only purpose is to live update the",
                    style: TextStyle(
                      fontFamily: "FiraSans",
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "amount in your account.We can't make any",
                    style: TextStyle(
                      fontFamily: "FiraSans",
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "transactions on your behalf.",
                    style: TextStyle(
                      fontFamily: "FiraSans",
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset("assets/loading.png"),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "connecting...",
                          style: TextStyle(
                            fontFamily: "FiraSans",
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          "This could take upto 5 minutes",
                          style: TextStyle(
                            fontFamily: "FiraSans",
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 125,
                        ),
                        GestureDetector(
                          onTap: () {
                            // nest screen i.e onboarding screen 2
                          },
                          child: Container(
                            height: 44,
                            width: 320,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(10)),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Connect",
                                  style: TextStyle(
                                      fontFamily: "FiraSans",
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.link,
                                  color: Colors.white,
                                  size: 15,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
