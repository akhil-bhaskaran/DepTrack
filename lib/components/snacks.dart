import 'package:flutter/material.dart';
import 'package:pattip/components/menucard.dart';
import 'package:pattip/components/provider.dart';
import 'package:provider/provider.dart';

class Snacks extends StatefulWidget {
  const Snacks({super.key});

  @override
  State<Snacks> createState() => _SnacksState();
}

class _SnacksState extends State<Snacks> {
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

  @override
  Widget build(BuildContext context) {
    return Consumer<MenuProvider>(
      builder: (context, value, child) => ListView.builder(
        primary: false,
        itemBuilder: (context, index) => MenuItemCard(
            imageUrl: mFoodPic[index],
            foodName: mFoodName[index],
            price: value.snackFoodPrcie[index]),
        itemCount: mFoodName.length,
      ),
    );
  }
}
