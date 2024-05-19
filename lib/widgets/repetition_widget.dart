import 'dart:math';

import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

class RepetitionWidget extends StatefulWidget {
  const RepetitionWidget({super.key});

  @override
  State<RepetitionWidget> createState() => _RepetitionWidgetState();
}

class _RepetitionWidgetState extends State<RepetitionWidget> {
  Widget buildMask() {
    return Transform(
      alignment: Alignment.center,
      transform: Matrix4.identity()
        // ..translate(62.0, -30.0)
        ..rotateZ(42 * pi / 180),
      // angle: 0,
      child: Wrap(
        spacing: 4,
        children: List.generate(7, (i) {
          return Container(
            width: 24,
            height: 200,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(86, 16, 41, 1),
              borderRadius: BorderRadius.circular(1),
            ),
          );
        }).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color onPrimary = theme.colorScheme.onPrimary;
    final textStyle = TextStyle(
        color: onPrimary, fontWeight: FontWeight.bold, fontFamily: 'Satoshi');
    return Container(
      padding: const EdgeInsets.all(2.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: const Color.fromRGBO(86, 16, 41, 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(123, 22, 58, 1),
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(27.5), bottom: Radius.circular(5)),
                border: Border.all(
                    color: const Color.fromRGBO(123, 22, 58, 1), width: 2)),
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(27.5), bottom: Radius.circular(5)),
              child: OverflowBox(
                  maxWidth: 200, maxHeight: 200, child: buildMask()),
            ),
          )),
          const SizedBox(
            height: 2,
          ),
          Container(
            padding: const EdgeInsets.all(12.5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(
                  top: Radius.circular(5), bottom: Radius.circular(27.5)),
              color: Color.fromRGBO(123, 22, 58, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Design Principles',
                  style: textStyle.copyWith(
                      color: const Color.fromRGBO(232, 126, 177, 1),
                      fontSize: 8),
                ),
                Text(
                  'Repetition',
                  style: textStyle.copyWith(
                      color: const Color.fromRGBO(250, 233, 243, 1),
                      fontSize: 14),
                ),
                Text(
                  'Repeating some aspects of the design throughout the entire piece to create consistency and unity.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textStyle.copyWith(
                      color: const Color.fromRGBO(247, 211, 230, 0.6),
                      fontSize: 8),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
