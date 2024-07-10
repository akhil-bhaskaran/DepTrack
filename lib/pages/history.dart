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
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios)),
            backgroundColor: Colors.transparent,
            title: Text(
              "History",
              style: Values.txtstyle4,
            ),
          ),
          body: Container(
            width: double.maxFinite,
            height: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: ListView(
              children: const [
                PayedCard(payedmoney: '119'),
                ExpenseCard(date: '01/05/2024', day: 'Monday', amount: 26),
                ExpenseCard(date: '31/04/2024', day: 'Friday', amount: 28),
                ExpenseCard(date: '30/04/2024', day: 'Thursday', amount: 34),
                ExpenseCard(date: '29/04/2024', day: 'Wednesday', amount: 31),
                ExpenseCard(date: '29/04/2024', day: 'Wednesday', amount: 31),
              ],
            ),

            // child: ListView.builder(
            //   itemCount: 4,
            //   itemBuilder: (context, index) => ExpenseCard(
            //       date: '1/1/2024', day: "Moday", amount: value.todaysExpense),
            // ),
          )),
    );
  }
}
