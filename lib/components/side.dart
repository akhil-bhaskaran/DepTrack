import 'package:flutter/material.dart';
import 'package:pattip/components/menucard.dart';
import 'package:pattip/components/provider.dart';
import 'package:provider/provider.dart';

class Side extends StatelessWidget {
  Side({super.key});
  List<String> mFoodPic = [
    'assets/ayala.jpeg',
    'assets/mathi.jpeg',
    'assets/om.jpeg',
    'assets/papad.jpeg',
  ];
  List<String> mFoodName = [
    'Ayala Fry',
    'Mathi Fry',
    'Omelet',
    'Papadam',
  ];
  // List<double> mFoodPrcie = [
  //   10,
  //   5,
  //   10,
  //   2,
  // ];
  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => ListView.builder(
        primary: false,
        itemBuilder: (context, index) => MenuItemCard(
            imageUrl: mFoodPic[index],
            foodName: mFoodName[index],
            price: value.sFoodPrcie[index]),
        itemCount: mFoodName.length,
      ),
    );
  }
}
