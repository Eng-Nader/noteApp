import 'package:hive/hive.dart';
part 'note_model.g.dart';
// must be same a file name in model  
//dont forget this if you write a name of file wront you will throw an Eroor
//type id for a class dont repeat but the hiveFiled for a filed is unique for a filed in the class
@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
  

  NoteModel({
    required this.date,
    required this.color,
    required this.subtitle,
    required this.title,
  });
}
