import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:pattip/pages/home_page.dart';
import 'package:pattip/pages/menu.dart';
import 'package:pattip/pages/profile.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  List<Widget> widgetList = [const HomePage(), MenuPage(), const Profile()];
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
        backgroundColor: Colors.white,
        height: 70,
        buttonBackgroundColor: Colors.black,
        color: navIndex == 0
            ? Colors.black54
            : const Color.fromARGB(232, 255, 172, 6),
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
