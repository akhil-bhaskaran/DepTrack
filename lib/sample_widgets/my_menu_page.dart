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
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * .7078,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(50))),
                child: const Column())
          ],
        ),
        Positioned(
          top: (MediaQuery.of(context).size.height * .2) - 50,
          right: 0,
          left: 0,
          child: Container(
            decoration:  BoxDecoration(
              border: Border.all(color: Colors.white,width: 5),
              shape: BoxShape.circle,
              color:ColorPattern.rd,
            ),
            width: 100,
            height: 100,
            child: Center(
              child: IconButton(
                  onPressed: () {}, icon: const Icon(Icons.verified,color: Colors.white,size: 40,)),
            ),
          ),
        ),
      ]),
    );
  }
}
