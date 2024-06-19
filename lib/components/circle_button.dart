import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  const CircleButton({super.key, required this.icons, required this.size});
  final IconData icons;
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(70),
          color: const Color.fromARGB(255, 30, 193, 35)),
      child: Icon(
        icons,
        color: Color.fromARGB(255, 12, 12, 12),
      ),
    );
  }
}
