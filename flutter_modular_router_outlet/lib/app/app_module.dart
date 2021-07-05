import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_router_outlet/app/modules/login/login_module.dart';
import 'package:flutter_modular_router_outlet/app/modules/register/register_module.dart';
import 'package:flutter_modular_router_outlet/app/modules/start/start_module.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      '/register',
      module: RegisterModule(),
    ),
    ModuleRoute(
      Modular.initialRoute,
      module: LoginModule(),
    ),
    ModuleRoute(
      '/start',
      module: StartModule(),
    ),
  ];
}
