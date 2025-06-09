import 'package:flutter/material.dart';
import 'package:note_app/widget/custom_boutton.dart';
import 'package:note_app/widget/text_fild.dart';

class AddFormNote extends StatefulWidget {
  const AddFormNote({
    super.key,
  });

  @override
  State<AddFormNote> createState() => _AddFormNoteState();
}

class _AddFormNoteState extends State<AddFormNote> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidatemode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidatemode,
      child: ListView(
        children: [
          const SizedBox(
            height: 30,
          ),
          TextFiled(
            onSaved: (value) {
              title = value;
            },
            contentpadding: const EdgeInsets.symmetric(vertical: 16),
            title: '  title',
          ),
          const SizedBox(
            height: 50,
          ),
          TextFiled(
            onSaved: (vlaue) {
              subtitle = vlaue;
            },
            contentpadding: const EdgeInsets.symmetric(vertical: 50),
            title: '  content',
          ),
          const SizedBox(
            height: 100,
          ),
          CustomBoutton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidatemode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}