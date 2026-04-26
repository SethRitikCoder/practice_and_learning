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

commonToast2(
  BuildContext context,
  String massage, {
  Color bgcolor = Colors.greenAccent,
  int? dur,
}) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(massage),
      backgroundColor: bgcolor,
      duration: Duration(seconds: dur ?? 2),
    ),
  );
}
