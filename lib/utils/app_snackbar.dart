import 'package:flutter/material.dart';

class AppSnackBar {
  static show(BuildContext context, String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      behavior: SnackBarBehavior.fixed,
      content: Text(msg),
      duration: const Duration(milliseconds: 1500),
    ));
  }
}
