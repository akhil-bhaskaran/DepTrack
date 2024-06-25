import 'package:flutter/material.dart';
import 'package:pattip/components/colors.dart';

import 'package:pattip/components/constants.dart';
import 'package:pattip/components/curry.dart';
import 'package:pattip/components/main_dishes.dart';
import 'package:pattip/components/provider.dart';

import 'package:pattip/components/side.dart';
import 'package:pattip/components/snacks.dart';
import 'package:provider/provider.dart';

class MenuPage extends StatefulWidget {
  const MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> menu = ["Main Dishes", "Curry", "Side Dishes", "Snacks"];

  static int current = 0;
  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => Scaffold(
        backgroundColor: ColorPattern.gr,
        body: ListView(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height / 7.6,
              color: Colors.transparent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Our Menu",
                      style: Values.txtstyle4_1,
                    ),

                    //T A B    B A R
                    SizedBox(
                      width: double.infinity,
                      height: 40,
                      child: ListView.builder(
                        physics: const BouncingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 4,
                        itemBuilder: (context, index) => GestureDetector(
                          onTap: () {
                            setState(() {
                              current = index;
                            });
                          },
                          child: AnimatedContainer(
                            curve: Curves.easeInOutSine,
                            duration: const Duration(milliseconds: 200),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: current == index
                                    ? ColorPattern.rd
                                    : ColorPattern.gr,
                                borderRadius: BorderRadius.circular(19)),
                            margin: const EdgeInsets.symmetric(horizontal: 5),
                            width: 100,
                            child: Text(
                              menu[index],
                              style: current == index
                                  ? Values.txtstyle2_1
                                  : Values.txtstyle2,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: ColorPattern.gr,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(60, 30),
                      topRight: Radius.elliptical(60, 30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    menu[current],
                    style: Values.txtstyle4,
                  ),
                  ScrollConfiguration(
                    behavior: const ScrollBehavior().copyWith(
                        overscroll: true,
                        physics: const NeverScrollableScrollPhysics()),
                    child: SizedBox(height: 700, child: showPage()),
                  )
                ],
              ),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton.extended(
            backgroundColor: const Color.fromARGB(255, 240, 180, 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            onPressed: () {
              setState(() {
                value.clearPrice();
              });
            },
            label: Column(
              children: [
                Text("${value.todaysExpense}"),
                Text(
                  "Add Price",
                  style: Values.txtstyle2_1,
                )
              ],
            )),
        floatingActionButtonLocation:
            FloatingActionButtonLocation.miniCenterFloat,
      ),
    );
  }

  showPage() {
    switch (current) {
      case 0:
        return MainDishes();

      case 1:
        return Curry();
      case 2:
        return Side();
      case 3:
        return Snacks();
      default:
        MainDishes();
    }
  }
}
