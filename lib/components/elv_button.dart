import 'package:flutter/material.dart';

class ElvButton extends StatelessWidget {
  const ElvButton({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: double.maxFinite,
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.black)),
            onPressed: () {},
            child: Text(
              txt,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500),
            )));
  }
}
