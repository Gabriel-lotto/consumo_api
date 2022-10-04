import 'package:api_/app/json_placeholder/json_placeholder_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [
    // Bind.instance<Dio>(Dio()),
  ];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(Modular.initialRoute, module: JsonPlaceholderModule()),
  ];
}
