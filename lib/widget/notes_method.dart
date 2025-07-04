import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

String formatedDate() {
  DateTime currentDate = DateTime.now();
  String fomrmatedDate = DateFormat.yMd().format(currentDate);
  return fomrmatedDate;
}

void showSnakBar({ required BuildContext context,  required String title , required String message}) {
  var snackBar = SnackBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    content: AwesomeSnackbarContent(
      title: title, 
      message:  message , 
      contentType: ContentType.success,
    ),
  );
  ScaffoldMessenger.of(context)
    ..hideCurrentSnackBar()
    ..showSnackBar(snackBar);
}
