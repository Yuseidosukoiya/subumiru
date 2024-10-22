import 'package:flutter/material.dart';

class TimeChangeWidget extends StatefulWidget {
  final double currentHours;

  TimeChangeWidget({required this.currentHours});

  @override
  _TimeChangeWidgetState createState() =>
      _TimeChangeWidgetState();
}

class _TimeChangeWidgetState extends State<TimeChangeWidget> {
  late double hours;
  @override
  void initState() {
    super.initState();
    hours = widget.currentHours;
  }

  void _incrementHours() {
    setState(() {
      hours += 0.1;
    });
  }

  void _decrementHours() {
    setState(() {
      if (hours > 0) {
        hours -= 0.1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "$hours h",
          style: TextStyle(fontSize: 18),
        ),
        IconButton(
          icon: Icon(Icons.remove_circle_outline),
          onPressed: _decrementHours,
        ),
        IconButton(
          icon: Icon(Icons.add_circle_outline),
          onPressed: _incrementHours,
        ),
      ],
    );
  }
}
