import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pattip/components/colors.dart';
import 'package:pattip/pages/home_page.dart';
import 'package:pattip/pages/profile.dart';
import 'package:pattip/sample_widgets/my_menu_page.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  List<Widget> widgetList = [
    const HomePage(),
    const MyMenuPage(),
    const Profile()
  ];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: navIndex,
        children: widgetList,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: ColorPattern.gr,
        height: 70,
        buttonBackgroundColor: ColorPattern.rd,
        color: ColorPattern.rd,
        index: navIndex,
        onTap: (value) {
          navIndex = value;

          setState(() {});
        },
        items: const [
          Icon(
            Icons.home,
            color: Colors.white,
          ),
          Icon(Icons.menu, color: Colors.white),
          Icon(Icons.person_2_sharp, color: Colors.white)
        ],
      ),
    );
  }
}
