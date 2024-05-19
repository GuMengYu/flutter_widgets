import 'dart:math';

import 'package:flutter/material.dart';

class BalanceWidget extends StatefulWidget {
  const BalanceWidget({super.key});

  @override
  State<BalanceWidget> createState() => _BalanceWidgetState();
}

class _BalanceWidgetState extends State<BalanceWidget> {
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
          color: const Color.fromRGBO(0, 46, 122, 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(5),
            width: double.infinity,
            decoration: BoxDecoration(
                color: const Color.fromRGBO(5, 62, 156, 1),
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(27.5), bottom: Radius.circular(5)),
                border: Border.all(
                    color: const Color.fromRGBO(5, 62, 156, 1), width: 2)),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(102, 162, 215, 1),
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(102, 162, 215, 1),
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(102, 162, 215, 1),
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(102, 162, 215, 1),
                      borderRadius: BorderRadius.circular(17.5),
                    ),
                  ),
                )
              ],
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
              color: Color.fromRGBO(5, 62, 156, 1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Design Principles',
                  style: textStyle.copyWith(
                      color: const Color.fromRGBO(38, 191, 255, 1),
                      fontSize: 8),
                ),
                Text(
                  'Balance',
                  style: textStyle.copyWith(
                      color: const Color.fromRGBO(206, 239, 255, 1),
                      fontSize: 14),
                ),
                Text(
                  'Achieving visual harmony through color, shape, and positioning, ensuring that no single part of the design overpowers others.',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: textStyle.copyWith(
                      color: const Color.fromRGBO(167, 229, 255, 0.6),
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
