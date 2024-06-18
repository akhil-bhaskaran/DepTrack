import 'package:flutter/material.dart';
import 'package:pattip/components/menucard.dart';
import 'package:pattip/components/provider.dart';
import 'package:provider/provider.dart';

class Curry extends StatelessWidget {
  Curry({super.key});
  List<String> mFoodPic = [
    'assets/sambar.jpeg',
    'assets/chicken.jpeg',
    'assets/green.jpeg',
    'assets/kadala.jpeg',
    'assets/soya.jpeg',
  ];
  List<String> mFoodName = [
    'Samabar',
    'Chicken Curry',
    'Green beens',
    'Kadala Curry',
    "Soya Been",
  ];
  // List<double> mFoodPrcie = [
  //   10,
  //   10,
  //   15,
  //   15,
  //   10,
  // ];
  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => ListView.builder(
        primary: false,
        itemBuilder: (context, index) => MenuItemCard(
            imageUrl: mFoodPic[index],
            foodName: mFoodName[index],
            price: value.cFoodPrcie[index]),
        itemCount: value.cFoodPrcie.length,
      ),
    );
  }
}
