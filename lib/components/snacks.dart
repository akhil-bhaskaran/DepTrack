import 'package:flutter/material.dart';
import 'package:pattip/components/menucard.dart';

class Snacks extends StatelessWidget {
  Snacks({super.key});
  List<String> mFoodPic = [
    'assets/bond.jpeg',
    'assets/parip.jpeg',
    'assets/pazham.jpeg',
    'assets/ulli.jpeg',
  ];
  List<String> mFoodName = [
    'Bonda',
    'Paprip Vada',
    'Pazham Pori',
    'Ulli Vada',
  ];
  List<double> mFoodPrcie = [
    10,
    10,
    10,
    10,
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      primary: false,
      itemBuilder: (context, index) => MenuItemCard(
          imageUrl: mFoodPic[index],
          foodName: mFoodName[index],
          price: mFoodPrcie[index]),
      itemCount: mFoodPrcie.length,
    );
  }
}
