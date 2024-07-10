import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pattip/components/colors.dart';
import 'package:pattip/components/constants.dart';
import 'package:pattip/components/curry.dart';
import 'package:pattip/components/main_dishes.dart';
import 'package:pattip/components/side.dart';
import 'package:pattip/components/snacks.dart';

class MyMenuPage extends StatefulWidget {
  const MyMenuPage({super.key});

  @override
  State<MyMenuPage> createState() => _MyMenuPageState();
}

class _MyMenuPageState extends State<MyMenuPage> {
  static int current = 0;
  List<String> menu = ["Main Dishes", "Curry", "Side Dishes", "Snacks"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattern.rd,
      body: ListView(
        children: [
          Stack(children: [
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * .2,
                  color: ColorPattern.rd,
                ),

                // F R O N T  ITEMS
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    width: double.maxFinite,
                    height:
                        (MediaQuery.of(context).size.height * .25) + 130 * 6,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            BorderRadius.vertical(top: Radius.circular(50))),
                    // OK
                    child: ListView(
                      primary: false,
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.more_horiz)),
                                IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.delete))
                              ],
                            ),
                            const Text(
                              "\u{20B9} 0.0",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),

                            //  T A B   B A R
                            SizedBox(
                              width: double.infinity,
                              height: 40,
                              child: ListView.builder(
                                physics: const BouncingScrollPhysics(),
                                scrollDirection: Axis.horizontal,
                                itemCount: 4,
                                itemBuilder: (context, index) =>
                                    GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      current = index;
                                    });
                                  },
                                  child: AnimatedContainer(
                                    curve: Curves.easeInOutSine,
                                    duration: const Duration(milliseconds: 250),
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                        border:
                                            Border.all(color: ColorPattern.rd),
                                        color: current == index
                                            ? ColorPattern.rd
                                            : ColorPattern.gr,
                                        borderRadius:
                                            BorderRadius.circular(25)),
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 5),
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
                            ),

                            //  D I S H   C O N T A I N E R
                            Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 15, vertical: 8),
                              height: MediaQuery.of(context).size.height,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    menu[current],
                                    style: Values.txtstyle4,
                                  ),
                                  ScrollConfiguration(
                                    behavior: const ScrollBehavior().copyWith(
                                        overscroll: false,
                                        physics:
                                            const NeverScrollableScrollPhysics()),
                                    child: SizedBox(
                                        height: 727, child: showPage()),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
            Positioned(
              top: (MediaQuery.of(context).size.height * .2) - 45,
              right: 0,
              left: 0,
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white, width: 5),
                  shape: BoxShape.circle,
                  color: ColorPattern.rd,
                ),
                width: 90,
                height: 90,
                child: Center(
                  child: IconButton(
                      onPressed: () {
                        log("button pressed");
                      },
                      icon: const Icon(
                        Icons.check,
                        color: Colors.white,
                        size: 50,
                      )),
                ),
              ),
            ),
          ]),
        ],
      ),
    );
  }

  showPage() {
    switch (current) {
      case 0:
        return MainDishes();

      case 1:
        return const Curry();
      case 2:
        return const Side();
      case 3:
        return const Snacks();
      default:
        MainDishes();
    }
  }
}
