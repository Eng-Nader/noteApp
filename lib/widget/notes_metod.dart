import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatedDate() {
  var currentDate = DateTime.now();
  var fomrmatedDate = DateFormat.yMd().format(currentDate);
  return fomrmatedDate;
}

void showSnakBar(BuildContext context, String title) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: const EdgeInsets.all(16),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
      content: Text(
        title,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
