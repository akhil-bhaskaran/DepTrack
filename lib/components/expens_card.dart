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
      padding: const EdgeInsets.symmetric( horizontal: 15),
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 60,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.black12),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(day,style: const TextStyle(fontSize: 17),),
              Text(date),
              
            ],
          ),
          Text("- $amount \u{20B9}",style: TextStyle(color: Colors.green[900],fontSize: 20),)
        ],
      ),
    );
  }
}

//New card like widget for better understand payments

class PayedCard extends StatelessWidget {
  const PayedCard({super.key, required this.payedmoney});
  final String payedmoney;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      margin: const EdgeInsets.symmetric(vertical: 5),
      width: double.maxFinite,
      height: 40,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green[100],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            "Payed",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          Text(
           payedmoney,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
          )
        ],
      ),
    );
  }
}
