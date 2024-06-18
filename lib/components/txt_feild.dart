import 'package:flutter/material.dart';

class TxtFeild extends StatelessWidget {
  const TxtFeild({super.key, required this.hintText, this.isOb = false});
  final String hintText;
  final bool isOb;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      height: 67,
      decoration: BoxDecoration(boxShadow: const [
        BoxShadow(
            color: Color.fromARGB(208, 158, 158, 158),
            blurRadius: 14,
            spreadRadius: 4)
      ], borderRadius: BorderRadius.circular(13), color: Colors.white),
      child: TextField(
        obscureText: isOb,
        decoration: InputDecoration(
          labelText: hintText,
          labelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 29, 28, 28)),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
