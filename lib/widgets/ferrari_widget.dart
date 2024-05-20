import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/app_snackbar.dart';
import 'package:solar_icons/solar_icons.dart';

class FerrariWidget extends StatefulWidget {
  const FerrariWidget({super.key});

  @override
  State<FerrariWidget> createState() => _FerrariWidgetState();
}

class _FerrariWidgetState extends State<FerrariWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color onPrimary = theme.colorScheme.onPrimary;
    final textStyle = TextStyle(color: onPrimary, fontFamily: 'Satoshi');
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 3, color: Colors.white.withOpacity(0.1)),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(158, 3, 3, 1),
              Color.fromRGBO(49, 3, 3, 1),
            ],
            stops: [0, 1],
          ),
          image: const DecorationImage(
              image: AssetImage('assets/images/ferrari.png'),
              fit: BoxFit.fitHeight,
              opacity: 0.5,
              scale: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/ferrari_logo.png',
                width: 10,
                height: 13,
              ),
              const SizedBox(
                width: 1.5,
              ),
              Text(
                'FERRARI',
                style: textStyle.copyWith(fontSize: 11, fontFamily: 'Yeseva'),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '"You can order a Ferrari in any color, but only if it is red."',
                style: textStyle.copyWith(fontSize: 13),
              ),
              Text(
                'ENZO FERRARI',
                style: textStyle.copyWith(fontSize: 8, fontFamily: 'Yeseva'),
              )
            ],
          )
        ],
      ),
    );
  }
}
