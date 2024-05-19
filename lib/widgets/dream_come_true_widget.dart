import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/app_snackbar.dart';
import 'package:solar_icons/solar_icons.dart';

class DreamComeTrueWidget extends StatefulWidget {
  const DreamComeTrueWidget({super.key});

  @override
  State<DreamComeTrueWidget> createState() => _DreamComeTrueWidgetState();
}

class _DreamComeTrueWidgetState extends State<DreamComeTrueWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color onPrimary = theme.colorScheme.onPrimary;
    final textStyle = TextStyle(
        color: onPrimary, fontWeight: FontWeight.bold, fontFamily: 'Satoshi');
    return Container(
      padding: const EdgeInsets.all(7.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 3, color: Colors.white.withOpacity(0.1)),
          gradient: const LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
            colors: [
              Color.fromRGBO(12, 32, 104, 1),
              Color.fromRGBO(19, 48, 156, 1),
            ],
            stops: [0, 1],
          ),
          image: const DecorationImage(
              image: AssetImage('assets/images/shapes_bg.png'),
              fit: BoxFit.cover,
              opacity: 0.5,
              scale: 2)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(32),
                      color: Colors.white.withOpacity(0.1)),
                  child: Icon(
                    SolarIconsBold.scooter,
                    size: 14,
                    color: onPrimary,
                  ),
                )
              ],
            ),
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '27 500\$',
                    style: textStyle.copyWith(fontSize: 19),
                  ),
                  Text(
                    'of 131 000\$',
                    style: textStyle.copyWith(
                        fontSize: 10,
                        color: const Color.fromARGB(255, 181, 217, 255)),
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  LinearProgressIndicator(
                    color: const Color.fromARGB(255, 74, 123, 255),
                    backgroundColor: const Color.fromARGB(255, 181, 217, 255),
                    minHeight: 5,
                    borderRadius: BorderRadius.circular(5),
                    value: 0.3,
                  ),
                ],
              ),
              const SizedBox(
                height: 3,
              ),
              const Text('For a dream car',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Satoshi',
                    color: Colors.white,
                  ))
            ],
          )),
          const SizedBox(
            height: 5,
          ),
          Material(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: InkWell(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              onTap: () {
                AppSnackBar.show(context, '施工中');
              },
              child: Ink(
                height: 40,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Color.fromRGBO(181, 217, 225, 1),
                ),
                child: Center(
                  child: Text(
                    'Top Up',
                    style: textStyle.copyWith(
                        // fontFamily: 'Satoshi',
                        color: const Color.fromARGB(255, 19, 48, 156)),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
