import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit.dart';
import 'package:note_app/widget/custom_appbar.dart';
import 'package:note_app/widget/custom_listview.dart';

class CustomPageBody extends StatefulWidget {
  const CustomPageBody({super.key});

  @override
  State<CustomPageBody> createState() => _CustomPageBodyState();
}

class _CustomPageBodyState extends State<CustomPageBody> {
  @override
  void initState() {
    BlocProvider.of<NotesCubit>(context).diplayNotes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          SizedBox(
            height: 50,
          ),
          CustomAppbar(
            text: 'Notes',
            icon: Icons.search,
          ),
          Expanded(
            child: CustomListView(),
          ),
        ],
      ),
    );
  }
}
