import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';

class SubscriptionWidget extends StatefulWidget {
  const SubscriptionWidget({super.key});

  @override
  State<SubscriptionWidget> createState() => _SubscriptionWidgetState();
}

class _SubscriptionWidgetState extends State<SubscriptionWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color onPrimary = theme.colorScheme.onPrimary;
    final textStyle = TextStyle(
        color: onPrimary, fontWeight: FontWeight.bold, fontFamily: 'Satoshi');
    return Container(
      padding: const EdgeInsets.all(14.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 3, color: Colors.white.withOpacity(0.1)),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(4, 47, 7, 1),
              Color.fromRGBO(18, 85, 21, 1),
            ],
            stops: [0, 1],
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'THIS MONTH',
                  style: textStyle.copyWith(
                      fontSize: 10, color: Color.fromRGBO(8, 168, 8, 1)),
                ),
                Text(
                  '4 subs',
                  style: textStyle.copyWith(
                      fontSize: 12, color: Color.fromRGBO(206, 254, 201, 1)),
                ),
                SizedBox(
                  height: 8,
                ),
                Text(
                  'TOTAL',
                  style: textStyle.copyWith(
                      fontSize: 10, color: Color.fromRGBO(8, 168, 8, 1)),
                ),
                Text(
                  '\$25.99',
                  style: textStyle.copyWith(
                      fontSize: 19, color: Color.fromRGBO(206, 254, 201, 1)),
                ),
              ],
            ),
          ),
          Container(
            height: 1,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  onPrimary.withOpacity(0.2),
                  onPrimary.withOpacity(0.1),
                  onPrimary.withOpacity(0),
                ],
                stops: const [0, 0.5, 1],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'NEXT PAYMENT',
                    style: textStyle.copyWith(
                        fontSize: 10, color: Color.fromRGBO(21, 221, 17, 1)),
                  ),
                  Text(
                    'iCloud - \$9.99',
                    style: textStyle.copyWith(
                        fontSize: 10, color: Color.fromRGBO(206, 254, 201, 1)),
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.fromLTRB(5, 2.7, 5, 2.7),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromRGBO(8, 168, 8, 1),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(
                      Icons.notifications_rounded,
                      size: 10,
                      color: onPrimary,
                    ),
                    Text(
                      'IN 4D',
                      style: textStyle.copyWith(fontSize: 9),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
