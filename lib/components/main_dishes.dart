import 'package:flutter/material.dart';
import 'package:pattip/components/menucard.dart';

class MainDishes extends StatelessWidget {
  MainDishes({super.key});
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
