import 'package:flutter/material.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff2E292E),
      appBar: AppBar(
        backgroundColor: const Color(0xff464646),
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            Image.asset("assets/badge1.png", width: 24, height: 34),
            const SizedBox(width: 10),
            const Text(
              "218",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FiraSans',
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 35),
            Image.asset("assets/badge2.png", width: 24, height: 32),
            const SizedBox(width: 10),
            const Text(
              "Bronze",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FiraSans',
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 30),
            Image.asset("assets/badge4.png", width: 24, height: 32),
            const SizedBox(width: 10),
            const Text(
              "17",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'FiraSans',
                fontSize: 18,
              ),
            ),
            const SizedBox(width: 30),
            const CircleAvatar(
              radius: 21,
              backgroundColor: Color(0xff5223AC),
              child: ClipOval(
                child: SizedBox(
                  width: 35,
                  height: 35,
                  child: Image(
                    image: AssetImage("assets/profile.png"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(height: 16),
                Center(
                  child: Container(
                    height: 70,
                    width: 320,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color(0xff66108E),
                    ),
                    child: const Center(
                      child: Text(
                        "New Goal 🚩",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: 'FiraSans',
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),

                Container(
                  width: 320,
                  child: SizedBox(
                    height: 19,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        return Container(
                          width: 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFF524952),
                          ),
                          margin: const EdgeInsets.only(
                            right: 8,
                          ),
                          child: Center(
                            child: Text(
                              "Save for a trip  ",
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: 'FiraSans',
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 20),
                // Placeholder for the main content
                Container(
                  width: 320,
                  height: 354,
                  child: SizedBox(
                    height: 19,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return HomeContainerWidget();
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 320,
                  height: 354,
                  child: SizedBox(
                    height: 19,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return HomeContainerWidget();
                      },
                    ),
                  ),
                ),

                const SizedBox(height: 600), // placeholder
              ],
            ),
          ),

          // ---- Floating Navigation Bar ----
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 70,
                width: 326,
                decoration: BoxDecoration(
                  color: const Color(0xFF464646),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 6,
                      offset: const Offset(0, 3),
                    )
                  ],
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _navIcon("assets/nav1.png", Colors.green),
                    _navIcon("assets/nav2.png", Colors.amber),
                    _navIcon("assets/nav3.png", Colors.purple),
                    _navIcon("assets/nav4.png", Colors.lightGreenAccent),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _navIcon(String imgString, Color color) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: CircleAvatar(
        radius: 25,
        backgroundColor: Colors.transparent,
        child: InkWell(
          onTap: () {
            // Handle navigation or action
          },
          child: Image.asset(
            imgString,
            width: 46,
            height: 46,
          ),
        ),
      ),
    );
  }
}

class HomeContainerWidget extends StatelessWidget {
  const HomeContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const int progressPercent = 49;
    const double saved = 400;
    const double target = 1200;

    return Container(
      width: 370,
      height: 354, // Adjusted to match your screenshot aspect!
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color(0xFF524952), // Card color from screenshot
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 14,
          ),
          Row(
            children: [
              const Text(
                "New iPhone",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                width: 126,
              ),
              InkWell(
                onTap: () {
                  // Handle add funds tap here
                },
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 23,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color(0xFFCDEB69), // Green-Yellow background
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(
                    child: Text(
                      'Add Funds',
                      style: TextStyle(
                        color: Color(0xFF39343D),
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        fontFamily: 'FiraSans',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                '$progressPercent%',
                style: const TextStyle(
                  fontSize: 35,
                  color: Color(0xFFB86BFF), // Purple
                  fontFamily: 'FiraSans',
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$0',
                          style: const TextStyle(
                            color: Color(0xFFB1FFF4),
                            fontSize: 12,
                            fontFamily: 'FiraSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          '\$${target.toStringAsFixed(0)}',
                          style: const TextStyle(
                            color: Color(0xFF7B7789),
                            fontSize: 12,
                            fontFamily: 'FiraSans',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    // --- Progress Bar ---
                    SizedBox(
                      height: 5,
                      width: 245,
                      child: Stack(
                        children: [
                          Container(
                            height: 5,
                            width: 233,
                            decoration: BoxDecoration(
                              color: const Color(0xFF39343D),
                              borderRadius: BorderRadius.circular(6),
                            ),
                          ),
                          FractionallySizedBox(
                            alignment: Alignment.centerLeft,
                            widthFactor: saved / target,
                            child: Container(
                              height: 11,
                              decoration: BoxDecoration(
                                color: const Color(0xFF2BB695),
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 7),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
