import 'package:flutter/material.dart';
import 'package:finbase/screens/home/home_page_1.dart';

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
              height: 260,
            ),
            Text(
              "Set a Savings Goals!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: "FiraSans",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Give yourself something to work towards! It could be saving for a new phone, car, emergency fund. So many possibilities!",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                fontFamily: "FiraSans",
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              "Title",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: "FiraSans",
              ),
            ),
            SizedBox(
              height: 6,
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
                  hintText: "Enter a title",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: "FiraSans",
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            SizedBox(height: 12),
            Text(
              "Amount",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: "FiraSans",
              ),
            ),
            SizedBox(
              height: 6,
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
                  hintText: "Enter an amount",
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: Colors.grey,
                    fontFamily: "FiraSans",
                  ),
                ),
              ),
            ),
            SizedBox(height: 14),
            Text(
              "TimeFrame",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w400,
                fontFamily: "FiraSans",
              ),
            ),
            SizedBox(height: 6),
            _TimeFrameSlider(),
            SizedBox(height: 12),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomePage1()));
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
                      "View the Dashboard",
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

class _TimeFrameSlider extends StatefulWidget {
  @override
  State<_TimeFrameSlider> createState() => _TimeFrameSliderState();
}

class _TimeFrameSliderState extends State<_TimeFrameSlider> {
  double _currentValue = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Slider(
          thumbColor: Color(0xff0B8467),
          activeColor: Color(0xffE2E2E2),
          value: _currentValue,
          min: 1,
          max: 12,
          divisions: 11,
          label: "${_currentValue.round()} months",
          onChanged: (value) {
            setState(() {
              _currentValue = value;
            });
          },
        ),
      ],
    );
  }
}
