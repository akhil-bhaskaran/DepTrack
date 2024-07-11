import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pattip/components/colors.dart';

class MyMenuPage extends StatelessWidget {
  const MyMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorPattern.rd,
      body: Stack(children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .2,
              color: ColorPattern.rd,
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * .7078,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz)),
                        IconButton(
                            onPressed: () {}, icon: const Icon(Icons.delete))
                      ],
                    ),
                    const Text(
                      "\u{20B9} 0.0",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ))
          ],
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height * .2) - 45,
          right: 0,
          left: 0,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.white, width: 5),
              shape: BoxShape.circle,
              color: ColorPattern.rd,
            ),
            width: 90,
            height: 90,
            child: Center(
              child: IconButton(
                  onPressed: () {
                    log("button pressed");
                  },
                  icon: const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 50,
                  )),
            ),
          ),
        ),
      ]),
    );
  }
}
