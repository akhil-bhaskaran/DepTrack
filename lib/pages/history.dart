import 'package:flutter/material.dart';
import 'package:pattip/components/constants.dart';
import 'package:pattip/components/expens_card.dart';
import 'package:pattip/components/provider.dart';
import 'package:provider/provider.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "H I S T O R Y ",
              style: Values.txtstyle4,
            ),
          ),
          body: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) => ExpenseCard(
                date: '1/1/2024', day: "Moday", amount: value.todaysExpense),
          )),
    );
  }
}
