import 'package:flutter/material.dart';

class DayCard extends StatelessWidget {
  const DayCard({super.key, required this.day, this.amount});
  final String day;
  final double? amount;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 12),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black45),
          color: const Color.fromARGB(255, 255, 255, 255),
          borderRadius: BorderRadius.circular(15)),
      child: Text("$day\n$amount"),
    );
  }
}
