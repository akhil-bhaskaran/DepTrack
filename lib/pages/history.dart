import 'package:flutter/material.dart';
import 'package:pattip/components/constants.dart';

class History extends StatelessWidget {
  const History({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "H I S T O R Y ",
          style: Values.txtstyle4,
        ),
      ),
      body: Center(
        child: Text(
          "H I S T O R Y   I S    E M P T Y ",
          style: Values.txtstyle1,
        ),
      ),
    );
  }
}
