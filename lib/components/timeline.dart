import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Timeline extends StatelessWidget {
  const Timeline(
      {super.key,
      this.ontap,
      required this.isFirst,
      required this.isLast,
      required this.txt});
  final bool isFirst;
  final bool isLast;
  final Widget txt;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: SizedBox(
        height: 100,
        child: TimelineTile(
          beforeLineStyle: const LineStyle(color: Colors.amber),
          afterLineStyle: const LineStyle(
            color: Colors.amber,
          ),
          isFirst: isFirst,
          isLast: isLast,
          endChild: txt,
          indicatorStyle: const IndicatorStyle(
            color: Colors.amber,
          ),
        ),
      ),
    );
  }
}
