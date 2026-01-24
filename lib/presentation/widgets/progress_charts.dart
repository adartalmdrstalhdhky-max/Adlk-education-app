import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ProgressChart extends StatelessWidget {
  final Map<String, int> mistakes;

  const ProgressChart({super.key, required this.mistakes});

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        barGroups: mistakes.entries.map((e) {
          return BarChartGroupData(
            x: e.key.hashCode,
            barRods: [
              BarChartRodData(
                toY: e.value.toDouble(),
                color: Colors.red,
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
