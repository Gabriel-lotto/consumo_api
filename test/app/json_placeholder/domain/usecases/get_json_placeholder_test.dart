import 'package:api_/app/json_placeholder/domain/usecases/get_json_placeholder.dart';
import 'package:api_/app/json_placeholder/infra/data_source/json_placeholder_ds_interface.dart';
import 'package:api_/app/json_placeholder/infra/models/json_placeholder_model.dart';
import 'package:api_/app/json_placeholder/infra/repositories/json_placeholder_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockDS extends Mock implements IGetJsonPlaceholderDS {}

void main() {
  final dataSource = MockDS();
  final repository = JsonPlaceholderRepositoryImpl(dataSource);
  final useCase = GetJsonPlaceholder(repository);

  group("JsonPlacceholder", () {
    group("call", () {
      test('Deve retornar um json se sucesso', () async {
        when(() => dataSource.getJsonPlaceholder()).thenAnswer((_) async {
          return <JsonPlaceholderModel>[];
        });
        var result = await useCase();
        expect(result, <JsonPlaceholderModel>[]);
      });
    });
  });
}
