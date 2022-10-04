import 'package:api_/app/json_placeholder/infra/models/json_placeholder_model.dart';
import 'package:mobx/mobx.dart';

import '../../external/data_source/json_placeholder_ds.dart';

part 'json_placeholder_store.g.dart';

class JsonPlaceholderStore = _JsonPlaceholderStoreBase with _$JsonPlaceholderStore;

abstract class _JsonPlaceholderStoreBase with Store {
  ///UseCase que lista o json do jsonPlaceholder
  final GetJsonPlaceholderDS _getJsonPlaceholder;

  _JsonPlaceholderStoreBase(this._getJsonPlaceholder);

  @observable
  ObservableList<JsonPlaceholderModel> jsonPlaceholderList = ObservableList();

  @action
  Future<void> getJsonPlaceholder() async {
    var result = await _getJsonPlaceholder.getJsonPlaceholder();

    jsonPlaceholderList = result.asObservable();
  }
}
