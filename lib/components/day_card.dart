import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  const DayCard({super.key, required this.day, this.amount});
  final String day;
  final double? amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 12),
      padding: EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
          color: Color.fromARGB(255, 181, 154, 255),
          borderRadius: BorderRadius.circular(15)),
      child: Text("$day\n$amount"),
    );
  }
}
