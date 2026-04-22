import 'package:flutter/material.dart';

commonToast(
  BuildContext context,
  String message, {
  Color? bgcolor,
  int durvalue = 3,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
      backgroundColor: bgcolor ?? Colors.transparent,
      duration: Duration(seconds: durvalue),
    ),
  );
}
