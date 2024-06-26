import 'package:flutter/material.dart';
import 'package:pattip/components/colors.dart';

import 'package:pattip/components/constants.dart';
import 'package:pattip/components/day_card.dart';
import 'package:pattip/components/profile_appbar.dart';
import 'package:pattip/components/provider.dart';
import 'package:pattip/components/timeline.dart';
import 'package:pattip/pages/history.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: ColorPattern.gr,
        body: SafeArea(
            child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 15),
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ProfileAppbar(),
              ],
            ),
            Values.boxH,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
              decoration: BoxDecoration(
                  color: ColorPattern.rd,
                  borderRadius: BorderRadius.circular(20)),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 4,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("Total Expenses ",
                            style: TextStyle(color: Colors.white)),
                        Values.boxH,
                        Text(
                          '\u{20B9}'
                          " ${value.totalPrice}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 29),
                        ),
                        Values.boxH,
                        const Text(
                          "Todays Expense",
                          style: TextStyle(color: Colors.white),
                        ),
                        Values.boxH,
                        Text(
                          '\u{20B9}' " ${value.todaysExpense}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 19),
                        ),
                      ],
                    ),
                  ),
                  // Expanded(
                  //   child: SizedBox(
                  //     child: Image.asset('assets/chart.png'),
                  //   ),
                  // )
                ],
              ),
            ),
            Values.boxH,
            // Text(
            //   "Today's Special !",
            //   style: Values.txtstyle4,
            // ),
            //Values.boxH,
            // SizedBox(
            //   height: 100,
            //   width: MediaQuery.of(context).size.width,
            //   child: GridView.builder(
            //     scrollDirection: Axis.horizontal,
            //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //         crossAxisCount: 1,
            //         mainAxisExtent: 100,
            //         mainAxisSpacing: 12),
            //     itemBuilder: (context, index) => const MenuItems(),
            //     itemCount: 4,
            //   ),
            // ),
            Values.boxH,
            Text(
              "Expense History",
              style: Values.txtstyle4,
            ),
            Column(
              children: [
                Timeline(
                  txt: DayCard(day: "Today", amount: value.todaysExpense),
                  isFirst: true,
                  isLast: false,
                ),
                const Timeline(
                  txt: DayCard(day: "Yesterday", amount: 100),
                  isFirst: false,
                  isLast: false,
                ),
                Timeline(
                  txt: const DayCard(
                    day: " More",
                  ),
                  isFirst: false,
                  isLast: true,
                  ontap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const History(),
                        ));
                  },
                ),
              ],
            )
          ],
        )),
      ),
    );
  }
}
