
  import 'package:intl/intl.dart';

String formatedDate() {
    var currentDate = DateTime.now();
    var fomrmatedDate = DateFormat.yMd().format(currentDate);
    return fomrmatedDate;
  }
