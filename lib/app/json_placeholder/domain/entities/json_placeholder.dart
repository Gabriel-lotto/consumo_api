abstract class JsonPlaceholder {
  final int userId;
  final int id;
  final String title;
  final bool completed;

  JsonPlaceholder({
    required this.userId,
    required this.id,
    required this.title,
    required this.completed,
  });

  Map<String, dynamic> toMap();
}
