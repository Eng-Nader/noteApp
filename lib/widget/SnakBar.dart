import 'package:flutter/material.dart';

void showSnakBar(BuildContext context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      padding: const EdgeInsets.all(16),
      action: SnackBarAction(label: 'Close', onPressed: () {}),
      content: const Text(
        'Edit Note Sucess',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}
