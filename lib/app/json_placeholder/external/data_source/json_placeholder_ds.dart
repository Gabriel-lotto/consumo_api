import 'package:api_/app/core/api/dio/dio_impl.dart';
import 'package:api_/app/json_placeholder/domain/errors/json_placeholder_errors.dart';
import 'package:api_/app/json_placeholder/infra/models/json_placeholder_model.dart';
import 'package:dio/dio.dart';

import '../../infra/data_source/json_placeholder_ds_interface.dart';

class GetJsonPlaceholderDS implements IGetJsonPlaceholderDS {
  final DioNetworkImpl api;
  var calls = 0;
  GetJsonPlaceholderDS(this.api);

  @override
  Future<List<JsonPlaceholderModel>> getJsonPlaceholder() async {
    try {
      var result;
      var response = await api.get('https://jsonplaceholder.typicode.com/todos');
      if (response.statusCode == 200) {
        var jsonList = (response.data as List).map((value) => JsonPlaceholderModel.fromMap(value)).toList();

        result = jsonList;
      }
      return result;
    } on DioError catch (e) {
      throw JsonPlaceholderError(e.message);
    }
  }
}
