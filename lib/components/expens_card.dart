import 'package:flutter/material.dart';

class ExpenseCard extends StatelessWidget {
  final String date;
  final String day;
  final double amount;

  const ExpenseCard({
    super.key,
    required this.date,
    required this.day,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 5),
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color.fromARGB(255, 255, 251, 0)),
      child: Row(
        children: [
          Column(
            children: [
              Text(date),
              Text(day),
            ],
          ),
        ],
      ),
    );
  }
}
