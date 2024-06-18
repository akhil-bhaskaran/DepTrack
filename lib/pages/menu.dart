import 'package:flutter/material.dart';

import 'package:pattip/components/constants.dart';
import 'package:pattip/components/menucard.dart';

class MenuPage extends StatefulWidget {
  MenuPage({super.key});

  @override
  State<MenuPage> createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  List<String> mFoodPic = [
    'assets/chor.jpeg',
    'assets/chapathi.jpeg',
    'assets/dosa.jpeg',
    'assets/porota.jpeg',
    'assets/putt.jpeg',
    'assets/vellapm.jpeg',
  ];
  List<String> mFoodName = [
    'Rise',
    'Chapathi',
    'Dosa',
    'Porotta',
    "Putt",
    "Vellapam"
  ];
  List<double> mFoodPrcie = [
    10,
    8,
    8,
    8,
    8,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 255, 136, 0),
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
                    // Container(
                    //   width: double.infinity,
                    //   height: 40,
                    //   child: ListView.builder(
                    //     itemBuilder: (context, index) => Container(
                    //       margin: EdgeInsets.symmetric(horizontal: 5),
                    //       width: 100,
                    //     ),
                    //   ),
                    // )
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              height: MediaQuery.of(context).size.height * 10,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(60, 30),
                      topRight: Radius.elliptical(60, 30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Main Dishes",
                    style: Values.txtstyle4,
                  ),
                  ScrollConfiguration(
                    behavior: const ScrollBehavior().copyWith(overscroll: true),
                    child: SizedBox(
                      height: 1000,
                      child: ListView.builder(
                        primary: false,
                        itemBuilder: (context, index) => MenuItemCard(
                            imageUrl: mFoodPic[index],
                            foodName: mFoodName[index],
                            price: mFoodPrcie[index]),
                        itemCount: mFoodPrcie.length,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ));
  }
}
