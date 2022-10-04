import 'package:api_/app/json_placeholder/domain/repositories/json_placeholder_repository_interface.dart';

import '../../infra/models/json_placeholder_model.dart';

abstract class IGetJsonPlaceholder {
  Future<List<JsonPlaceholderModel>> call();
}

class GetJsonPlaceholder implements IGetJsonPlaceholder {
  final JsonPlaceholderRepository repository;

  GetJsonPlaceholder(this.repository);

  @override
  Future<List<JsonPlaceholderModel>> call() async {
    var result = await repository.getJsonPlaceholder();
    return result;
  }
}
