import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';

class Onboarding5Screen extends StatelessWidget {
  const Onboarding5Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Spending Insights",
              style: TextStyle(
                fontFamily: "FiraSans",
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 20),
            const BarChartWithLabel(),
          ],
        ),
      ),
    );
  }
}

// --- Bar Chart Widget with Label ---
class BarChartWithLabel extends StatelessWidget {
  const BarChartWithLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        const MonthlyBarChart(),
        const Positioned(
          top: 10,
          child: Text(
            "26% higher",
            style: TextStyle(
              color: Colors.white,
              fontSize: 10,
              fontWeight: FontWeight.bold,
              fontFamily: "FiraSans",
            ),
          ),
        ),
      ],
    );
  }
}

// --- Monthly Bar Chart Widget ---
class MonthlyBarChart extends StatelessWidget {
  const MonthlyBarChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      decoration: BoxDecoration(
        color: const Color(0xFF2E2E2E),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.all(16),
      child: BarChart(
        BarChartData(
          alignment: BarChartAlignment.spaceAround,
          maxY: 20,
          barTouchData: BarTouchData(enabled: false),
          titlesData: FlTitlesData(
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (double value, TitleMeta meta) {
                  const style = TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontFamily: "FiraSans",
                  );
                  switch (value.toInt()) {
                    case 0:
                      return const Text('Jan', style: style);
                    case 1:
                      return const Text('Feb', style: style);
                    case 2:
                      return const Text('Mar', style: style);
                    case 3:
                      return const Text('Apr', style: style);
                    case 4:
                      return const Text('May', style: style);
                    case 5:
                      return const Text('Jun', style: style);
                    default:
                      return const Text('', style: style);
                  }
                },
              ),
            ),
          ),
          gridData: FlGridData(show: false),
          borderData: FlBorderData(show: false),
          barGroups: _barGroups(),
        ),
      ),
    );
  }

  List<BarChartGroupData> _barGroups() {
    final barColor = const LinearGradient(
      colors: [Color(0xFF0B8467), Color(0xFF65C9B1)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final highlightedGradient = const LinearGradient(
      colors: [Color(0xFF9136BB), Color(0xFFC076E2)],
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
    );

    final heights = [8.0, 14.0, 12.0, 18.0, 10.0, 13.0];

    return List.generate(6, (index) {
      final isHighlighted = index == 3;

      return BarChartGroupData(
        x: index,
        barRods: [
          BarChartRodData(
            toY: heights[index],
            width: 22,
            borderRadius: BorderRadius.circular(6),
            gradient: isHighlighted ? highlightedGradient : barColor,
          ),
        ],
        showingTooltipIndicators: isHighlighted ? [0] : [],
        barsSpace: 4,
      );
    });
  }
}
