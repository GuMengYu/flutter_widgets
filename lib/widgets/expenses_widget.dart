import 'package:flutter/material.dart';
import 'package:flutter_widgets/utils/app_snackbar.dart';

class ExpensesWidget extends StatefulWidget {
  const ExpensesWidget({super.key});

  @override
  State<ExpensesWidget> createState() => _ExpensesWidgetState();
}

class _ExpensesWidgetState extends State<ExpensesWidget> {
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
        border:
            Border.all(width: 3, color: theme.colorScheme.error.withAlpha(200)),
        // color: theme.colorScheme.error.withAlpha(225),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: const Alignment(0.8, 1),
          colors: <Color>[
            theme.colorScheme.error.withAlpha(205), // blue
            theme.colorScheme.error.withAlpha(215), // green
            theme.colorScheme.error.withAlpha(225), // yellow
            theme.colorScheme.error.withAlpha(230), // red
            theme.colorScheme.error.withAlpha(
                240), // blue again to seamlessly transition to the start
          ],
          stops: const <double>[0.0, 0.25, 0.5, 0.75, 1.0],
        ),
      ),
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
                    color: Colors.red.shade600,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Icon(
                    Icons.north_east_rounded,
                    size: 16,
                    color: Colors.red.shade100,
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
                    'CNY',
                    style: textStyle.copyWith(
                      fontSize: 8,
                    ),
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
                  Text('ExPensEs', style: textStyle.copyWith(fontSize: 12)),
                  Text('¥8,823.12',
                      style: textStyle.copyWith(
                        fontSize: 17,
                      )),
                  Transform.translate(
                    offset: const Offset(-4, 0),
                    child: Row(
                      children: [
                        const Icon(
                          Icons.arrow_drop_up_rounded,
                          size: 18,
                          color: Colors.red,
                        ),
                        Text(
                          '10%(24h)',
                          style: textStyle.copyWith(
                              color: Colors.red, fontSize: 7),
                        ),
                      ],
                    ),
                  ),
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
                border: Border.all(width: 1.5, color: Colors.red.shade300),
                color: Colors.red.shade400,
              ),
              child: Center(
                child: Text(
                  'Top Up',
                  style: textStyle,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
