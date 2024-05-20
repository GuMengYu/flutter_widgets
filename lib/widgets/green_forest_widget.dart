import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/app_snackbar.dart';
import 'package:solar_icons/solar_icons.dart';

class GreenForestWidget extends StatefulWidget {
  const GreenForestWidget({super.key});

  @override
  State<GreenForestWidget> createState() => _GreenForestWidgetState();
}

class _GreenForestWidgetState extends State<GreenForestWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color onPrimary = theme.colorScheme.onPrimary;
    final textStyle = TextStyle(color: onPrimary, fontFamily: 'Satoshi');
    return Container(
      padding: const EdgeInsets.all(0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          border: Border.all(width: 3, color: Colors.white.withOpacity(0.1)),
          gradient: const LinearGradient(
            begin: Alignment.center,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(26, 26, 26, 1),
              Color.fromRGBO(0, 0, 0, 1),
            ],
            stops: [0, 1],
          ),
          image: const DecorationImage(
              image: AssetImage('assets/images/michael-benz-unsplash.png'),
              fit: BoxFit.fitHeight,
              opacity: 0.9,
              scale: 1)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(12.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text(
                      'TEMPERATURE',
                      style: textStyle.copyWith(
                          fontSize: 6, color: Color.fromRGBO(21, 62, 44, 0.8)),
                    ),
                    Text(
                      '+11°',
                      style: textStyle.copyWith(
                          fontSize: 10, color: Color.fromRGBO(21, 62, 44, 1)),
                    )
                  ],
                ),
                Column(
                  children: [
                    Text(
                      'HUMIDITY',
                      style: textStyle.copyWith(
                          fontSize: 6, color: Color.fromRGBO(21, 62, 44, 0.8)),
                    ),
                    Text(
                      '76%',
                      style: textStyle.copyWith(
                          fontSize: 10, color: Color.fromRGBO(21, 62, 44, 1)),
                    )
                  ],
                )
              ],
            ),
          ),
          Stack(
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 70,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(bottom: Radius.circular(28)),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.black.withOpacity(0.5),
                            Colors.black
                          ],
                          stops: [
                            0,
                            0.2,
                            1
                          ])),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'GREEN FOREST',
                      style: textStyle.copyWith(fontSize: 13),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Container(
                      height: 1,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            onPrimary.withOpacity(0.1),
                            onPrimary.withOpacity(0.2),
                            onPrimary.withOpacity(0.1),
                          ],
                          stops: const [0, 0.5, 1],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 2,
                    ),
                    Text(
                      'Distance: 3.25km',
                      style: textStyle.copyWith(fontSize: 8),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
