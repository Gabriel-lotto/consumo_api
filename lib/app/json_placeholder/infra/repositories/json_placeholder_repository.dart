import '../../domain/repositories/json_placeholder_repository_interface.dart';
import '../data_source/json_placeholder_ds_interface.dart';
import '../models/json_placeholder_model.dart';

class JsonPlaceholderRepositoryImpl implements JsonPlaceholderRepository {
  final IGetJsonPlaceholderDS ds;

  JsonPlaceholderRepositoryImpl(this.ds);
  @override
  Future<List<JsonPlaceholderModel>> getJsonPlaceholder() async {
    var result;
    try {
      result = await ds.getJsonPlaceholder();
      return [JsonPlaceholderModel.fromMap(result)];
    } catch (e) {
      rethrow;
    }
  }
}
