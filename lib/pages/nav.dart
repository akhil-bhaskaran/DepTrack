import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pattip/pages/home_page.dart';
import 'package:pattip/pages/menu.dart';

class Nav extends StatefulWidget {
  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  List<Widget> widgetList = [HomePage(), MenuPage()];
  int navIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {
        log(navIndex.toString());
      }),
      body: IndexedStack(
        index: navIndex,
        children: widgetList,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: navIndex,
        onTap: (value) {
          navIndex = value;
          log(value.toString());
          setState(() {});
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'Menu'),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_2_sharp), label: 'Profile')
        ],
      ),
    );
  }
}
