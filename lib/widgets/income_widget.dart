import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/app_snackbar.dart';

class IncomeWidget extends StatefulWidget {
  const IncomeWidget({super.key});

  @override
  State<IncomeWidget> createState() => _IncomeWidgetState();
}

class _IncomeWidgetState extends State<IncomeWidget> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    Color onPrimary = theme.colorScheme.onPrimary;
    final textStyle = TextStyle(
        color: onPrimary.withAlpha(180),
        fontWeight: FontWeight.bold,
        fontFamily: 'MajorMonoDisplay');
    return Container(
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          border: Border.all(
              width: 3, color: theme.colorScheme.primary.withAlpha(200)),
          color: theme.colorScheme.primary.withAlpha(225),
          image: const DecorationImage(
              image: AssetImage('assets/images/mathematics.png'),
              fit: BoxFit.none,
              repeat: ImageRepeat.repeat,
              opacity: 1,
              scale: 2)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(7.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: Colors.green.shade600,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    Icons.south_west_rounded,
                    size: 16,
                    color: Colors.green.shade100,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 5, vertical: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(width: 1, color: Colors.white30),
                  ),
                  child: Text(
                    'USD',
                    style: textStyle.copyWith(fontSize: 8),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('IncomE', style: textStyle.copyWith(fontSize: 12)),
                  Text('\$54,150.34',
                      style: textStyle.copyWith(
                          fontSize: 17, fontWeight: FontWeight.bold)),
                  Transform.translate(
                    offset: const Offset(-4, 0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_drop_up_rounded,
                          size: 18,
                          color: Colors.green,
                        ),
                        Text(
                          '10%(24h)',
                          style: textStyle.copyWith(
                              color: Colors.green, fontSize: 7),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          GestureDetector(
            onTap: () {
              AppSnackBar.show(context, '施工中');
            },
            child: Container(
              height: 42,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(4), bottom: Radius.circular(28)),
                border: Border.all(
                    width: 1.5,
                    color: theme.colorScheme.primaryContainer.withAlpha(100)),
                color: theme.colorScheme.primary.withAlpha(180),
              ),
              child: Center(
                child: Text(
                  'WithDraw',
                  style: textStyle,
                ),
              ),
            ),
          )
          // const SizedBox(
          //   height: 2,
          // ),
          // Container(
          //   height: 0.5,
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //       colors: [
          //         Colors.transparent,
          //         onPrimary.withOpacity(0.1),
          //         onPrimary.withOpacity(0.2),
          //         onPrimary.withOpacity(0.1),
          //         Colors.transparent,
          //       ],
          //       stops: const [0, 0.15, 0.5, 0.85, 1],
          //     ),
          //   ),
          // ),
          // Padding(
          //   padding: const EdgeInsets.symmetric(horizontal: 7, vertical: 4),
          //   child: SizedBox(
          //     height: 34,
          //     child: ListView(
          //       children: [
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text('The Best Company',
          //                 style: TextStyle(fontSize: 9, color: onPrimary)),
          //             Text(
          //               '\$4150',
          //               style: textStyle.copyWith(
          //                 color: Colors.green,
          //                 fontSize: 10,
          //               ),
          //             ),
          //           ],
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text('中欧健康混合',
          //                 style: TextStyle(fontSize: 9, color: onPrimary)),
          //             Text(
          //               '\$150.00',
          //               style: textStyle.copyWith(
          //                 color: Colors.green,
          //                 fontSize: 10,
          //               ),
          //             ),
          //           ],
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             Text('纳斯达克100',
          //                 style: TextStyle(
          //                   fontSize: 9,
          //                   color: onPrimary,
          //                 )),
          //             Text(
          //               '\$24150.02',
          //               style: textStyle.copyWith(
          //                 color: Colors.green,
          //                 fontSize: 10,
          //               ),
          //             ),
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // )
        ],
      ),
    );
  }
}
