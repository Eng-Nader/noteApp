class NoteModel {
  final String title;
  final String subtitle;
  final String date;
  final int color;

  const NoteModel({
    required this.date,
    required this.color,
    required this.subtitle,
    required this.title,
  });

  factory NoteModel.fromjson(jsonDate) {
    return NoteModel(
      date: jsonDate[],
      color: jsonDate,
      subtitle: jsonDate,
      title: jsonDate,
    );
  }
}
