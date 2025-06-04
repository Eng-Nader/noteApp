import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  static String id = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: CustomPageBody());
  }
}
