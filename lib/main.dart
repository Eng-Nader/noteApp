import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/edit_page.dart';
import 'package:note_app/views/home_page.dart';
import 'package:note_app/widget/constant.dart';

void main() async {
  await Hive.initFlutter(); // must be init for hive flutter
   Hive.registerAdapter(NoteModelAdapter());  
  await Hive.openBox(kprimaryBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        HomePage.id: (context) => const HomePage(),
        EditPage.id: (context) => const EditPage(),
      },
      initialRoute: HomePage.id,
    );
  }
}
