import 'package:flutter/material.dart';
import 'package:pattip/components/colors.dart';

class ElvButton extends StatelessWidget {
  const ElvButton({super.key, required this.txt, required this.onpressed});
  final void Function() onpressed;
  final String txt;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 60,
        width: double.maxFinite,
        child: ElevatedButton(
            style: const ButtonStyle(
                shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12)))),
                backgroundColor: WidgetStatePropertyAll(ColorPattern.rd)),
            onPressed: onpressed,
            child: Text(
              txt,
              style: const TextStyle(
                  color: Colors.white, fontWeight: FontWeight.w500,fontSize: 20),
            )));
  }
}
