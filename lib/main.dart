import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_app/cubits/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/simple_bloc_observer.dart';
import 'package:note_app/views/home_page.dart';
import 'package:note_app/widget/constant.dart';

void main() async {
  Bloc.observer = SimpleBlocObserver();
  await Hive.initFlutter(); // must be init for hive flutter
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kprimaryBox);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => NotesCubit()),
      
      ],
      child: MaterialApp(
        theme: ThemeData(
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        debugShowCheckedModeBanner: false,
        routes: {
          HomePage.id: (context) => const HomePage(),
        },
        initialRoute: HomePage.id,
      ),
    );
  }
}
