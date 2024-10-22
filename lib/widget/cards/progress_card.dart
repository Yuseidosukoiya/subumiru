import 'package:flutter/material.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  final double targetRate;
  final double targetHours;

  const ProgressIndicatorWidget(
      {super.key, required this.targetRate, required this.targetHours});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.flag,
          color: Colors.red,
        ),
        SizedBox(width: 5),
        Text(
          "$targetRate 円/h",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Spacer(),
        Text(
          "$targetHours h",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
