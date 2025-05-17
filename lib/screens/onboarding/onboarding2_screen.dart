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
          Center(
            child: Container(
              width: 320,
              height: 200,
              child: Image.asset("assets/banner.png"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                  height: 15,
                ),
                Text(
                  "Bank Name",
                  style: TextStyle(
                    fontFamily: "FiraSans",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 44,
                  width: 320,
                  child: TextFormField(
                    //controller: controller,
                    //obscureText: isobscure,
                    decoration: InputDecoration(
                      suffixIcon: GestureDetector(
                        onTap: () {}, // drop down funtionality for this
                        child: Icon(Icons.keyboard_arrow_down_outlined),
                      ),
                      labelText: "Select one",
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
                          color: Color(0xFF0B8467),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Routing Number",
                  style: TextStyle(
                    fontFamily: "FiraSans",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 44,
                  width: 320,
                  child: TextFormField(
                    //controller: controller,
                    //obscureText: isobscure,
                    decoration: InputDecoration(
                      labelText: "12 digit numeric code",
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
                          color: Color(0xFF0B8467),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  "Account Number",
                  style: TextStyle(
                    fontFamily: "FiraSans",
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 44,
                  width: 320,
                  child: TextFormField(
                    //controller: controller,
                    //obscureText: isobscure,
                    decoration: InputDecoration(
                      labelText: "8-16 digit numeric code",
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
                          color: Color(0xFF0B8467),
                          width: 2.0,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
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
    );
  }
}
