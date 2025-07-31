import 'package:flutter/material.dart';

class HomeContainerWidget extends StatelessWidget {
  const HomeContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    const int progressPercent = 49;
    const double saved = 400;
    const double target = 1200;

    return Center(
      child: Stack(children: [
        Container(
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
              const SizedBox(height: 14),
              Row(
                children: [
                  const Text(
                    "New iPhone",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 17,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(width: 120),
                  InkWell(
                    onTap: () {
                      // Handle add funds tap here
                    },
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      height: 23,
                      width: 80,
                      decoration: BoxDecoration(
                        color: const Color(0xFFCDEB69),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
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
                  const Icon(
                    Icons.more_vert,
                    size: 20,
                    color: Colors.white,
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
                      color: Color(0xFFB86BFF),
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
                            const Text(
                              '\$0',
                              style: TextStyle(
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
                        const SizedBox(height: 3),
                        // Progress Bar
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
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text(
                    'Rewards',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'FiraSans',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const RewardsProgressBar(), // Here is your custom widget!
            ],
          ),
        ),
      ]),
    );
  }
}

// The actual rewards curved bar widget
class RewardsProgressBar extends StatelessWidget {
  const RewardsProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 320,
        height: 72,
        decoration: BoxDecoration(
            color: Color.fromARGB(255, 102, 92, 102),
            borderRadius: BorderRadius.circular(10)),
        child: Image.asset('assets/line.png'));
  }
}

// The custom painter for the smooth purple reward path
class _RewardsPathPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFB9A0FF)
      ..strokeWidth = 4
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(30, 62);
    path.cubicTo(
      40,
      10,
      100,
      85,
      282,
      65,
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

// Simple gem marker widget (replace with your own widget/Image if preferred)
Widget _rewardGem(String label) {
  return Container(
    width: 28,
    height: 28,
    decoration: BoxDecoration(
      color: const Color(0xFF38C7B6),
      shape: BoxShape.circle,
      border: Border.all(
        color: Colors.teal.shade200,
        width: 2,
      ),
    ),
    child: Center(
      child: Text(
        label,
        style: const TextStyle(
          color: Color(0xFFFFEB70),
          fontWeight: FontWeight.bold,
          fontSize: 13,
        ),
      ),
    ),
  );
}
