import '../models/json_placeholder_model.dart';

abstract class IGetJsonPlaceholderDS {
  Future<List<JsonPlaceholderModel>> getJsonPlaceholder();
}
