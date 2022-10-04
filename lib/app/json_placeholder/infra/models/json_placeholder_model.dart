import '../../domain/entities/json_placeholder.dart';

class JsonPlaceholderModel extends JsonPlaceholder {
  JsonPlaceholderModel({
    required int userId,
    required int id,
    required String title,
    required bool completed,
  }) : super(
          userId: userId,
          id: id,
          title: title,
          completed: completed,
        );

  factory JsonPlaceholderModel.fromMap(Map<String, dynamic> map) {
    return JsonPlaceholderModel(
      completed: map['completed'],
      id: map['id'],
      title: map['title'],
      userId: map['userId'],
    );
  }

  @override
  Map<String, dynamic> toMap() {
    return {
      'userId': userId,
      'id': id,
      'title': title,
      'completed': completed,
    };
  }
}
