import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pattip/components/constants.dart';
import 'package:pattip/components/menucard.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

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
                child: Text(
                  "Our Menu",
                  style: Values.txtstyle4,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.elliptical(60, 30),
                      topRight: Radius.elliptical(60, 30))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Today's Special",
                    style: Values.txtstyle4,
                  ),
                  MenuItemCard(
                      imageUrl: 'assets/br.jpeg',
                      foodName: "Burger",
                      price: 200)
                ],
              ),
            )
          ],
        ));
  }
}
