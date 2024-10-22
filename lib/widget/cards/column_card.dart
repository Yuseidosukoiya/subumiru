import 'package:flutter/material.dart';
import 'progress_card.dart';
import 'time_change.dart';

class ColumnCard extends StatelessWidget {
  final String title;
  final double hourlyRate;
  final double currentHours;
  final double targetRate;
  final double targetHours;
  final Color color;

  const ColumnCard({
    super.key,
    required this.title,
    required this.hourlyRate,
    required this.currentHours,
    required this.targetRate,
    required this.targetHours,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row for title and settings icon
            Row(
              children: [
                Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    color: color,
                    shape: BoxShape.circle,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Icon(Icons.settings),
              ],
            ),
            
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child:ProgressIndicatorWidget(targetRate: targetRate, targetHours: targetHours),
                    )
                  ],
            ),
            
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: TimeChangeWidget(currentHours: currentHours),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
