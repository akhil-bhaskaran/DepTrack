import 'package:flutter/material.dart';
import 'package:pattip/components/menucard.dart';
import 'package:pattip/components/provider.dart';
import 'package:provider/provider.dart';

class MainDishes extends StatefulWidget {
  MainDishes({super.key});

  @override
  State<MainDishes> createState() => _MainDishesState();
}

class _MainDishesState extends State<MainDishes> {
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

  // List<double> mFoodPrcie = [
  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => ListView.builder(
        primary: false,
        itemBuilder: (context, index) => MenuItemCard(
            imageUrl: mFoodPic[index],
            foodName: mFoodName[index],
            price: value.mFoodPrcie[index]),
        itemCount: value.mFoodPrcie.length,
      ),
    );
  }
}
