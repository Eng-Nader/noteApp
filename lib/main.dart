import 'package:flutter/material.dart';
import 'package:note_app/views/home_page.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) =>  const HomePage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
