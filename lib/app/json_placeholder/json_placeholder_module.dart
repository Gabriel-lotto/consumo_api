import 'package:api_/app/json_placeholder/external/data_source/json_placeholder_ds.dart';
import 'package:api_/app/json_placeholder/presenter/pages/json_placeholder_page.dart';
import 'package:api_/app/json_placeholder/presenter/stores/json_placeholder_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../core/api/dio/dio_impl.dart';
import 'domain/usecases/get_json_placeholder.dart';
import 'infra/repositories/json_placeholder_repository.dart';

class JsonPlaceholderModule extends Module {
  @override
  final List<Bind> binds = [
    //Store
    Bind.lazySingleton((i) => JsonPlaceholderStore(i<GetJsonPlaceholderDS>())),
    //Usecase
    Bind.lazySingleton((i) => GetJsonPlaceholder(i<JsonPlaceholderRepositoryImpl>())),
    //external
    Bind.lazySingleton((i) => GetJsonPlaceholderDS(i<DioNetworkImpl>())),
    //repository
    Bind.lazySingleton((i) => JsonPlaceholderRepositoryImpl(i<GetJsonPlaceholderDS>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => const JsonPlaceholderPage(),
    ),
  ];
}
