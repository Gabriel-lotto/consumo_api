import '../../infra/models/json_placeholder_model.dart';

abstract class JsonPlaceholderRepository {
  Future<List<JsonPlaceholderModel>> getJsonPlaceholder();
}
