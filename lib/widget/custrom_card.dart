import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_app/theme/app_theme.dart';
import 'package:note_app/views/edit_page.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({super.key, required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, EditPage.id);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 16),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  'Flutter Tips',
                  style: AppTheme.bold30,
                ),
                subtitle: Text(
                  'Create by Nader Sameer',
                  style: AppTheme.bold20,
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    FontAwesomeIcons.trash,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16),
                child: Text(
                  'May21 ,2021',
                  style: AppTheme.bold15,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
