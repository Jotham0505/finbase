import 'package:flutter/material.dart';

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
                width: 120,
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
              Icon(
                Icons.more_vert,
                size: 20,
                color: Colors.white,
              )
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
