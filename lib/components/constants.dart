import 'package:flutter/material.dart';

class Values {
  static const double spaceVertical = 15;

  // T E X T   S T Y L E S
  static TextStyle txtstyle1 = const TextStyle(
      fontWeight: FontWeight.w600, fontSize: 12, color: Colors.black54);

  static TextStyle txtstyle2 = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      wordSpacing: 1,
      color: Color.fromARGB(255, 0, 0, 0));

  static TextStyle txtstyle2_1 = const TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 13,
      wordSpacing: 1,
      color: Color.fromARGB(255, 255, 255, 255));

  static TextStyle txtstyle4 = const TextStyle(
      fontWeight: FontWeight.w900, fontSize: 20, color: Colors.black);

  static TextStyle txtstyle4_1 = const TextStyle(
      fontWeight: FontWeight.w900,
      fontSize: 25,
      color: Color.fromARGB(255, 255, 255, 255));

  // S I Z E D   B O X
  static SizedBox boxH = const SizedBox(
    height: Values.spaceVertical,
  );
}
