import 'package:api_/app/json_placeholder/domain/usecases/get_json_placeholder.dart';
import 'package:api_/app/json_placeholder/infra/data_source/json_placeholder_ds_interface.dart';
import 'package:api_/app/json_placeholder/infra/models/json_placeholder_model.dart';
import 'package:api_/app/json_placeholder/infra/repositories/json_placeholder_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDS extends Mock implements IGetJsonPlaceholderDS {}

void main() {
  final ds = MockDS();
  final repository = JsonPlaceholderRepositoryImpl(ds);
  final usecase = GetJsonPlaceholder(repository);
  group("", () {
    test("deve retornar uma lista do tipo JsonPlaceholderModel", () async {
      when(ds.getJsonPlaceholder).thenAnswer((_) async => <JsonPlaceholderModel>[]);
      var result = await usecase();
      expect(result, <JsonPlaceholderModel>[]);
    });
  });
}
