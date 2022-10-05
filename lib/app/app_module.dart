import 'package:api_/app/json_placeholder/json_placeholder_module.dart';
import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'core/api/dio/dio_impl.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    //api
    Bind.lazySingleton((i) => Dio()),
    Bind.lazySingleton((i) => DioNetworkImpl(i<Dio>())),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: JsonPlaceholderModule()),
  ];
}
