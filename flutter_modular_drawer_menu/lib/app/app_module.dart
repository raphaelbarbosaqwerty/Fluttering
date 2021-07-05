import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_drawer_menu/app/modules/login/login_module.dart';
import 'package:flutter_modular_drawer_menu/app/modules/register/register_module.dart';

import 'modules/home/home_module.dart';
import 'modules/login/login_page.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      Modular.initialRoute,
      module: LoginModule(),
    ),
    ModuleRoute(
      '/home',
      module: HomeModule(),
    ),
    ModuleRoute(
      '/register',
      module: RegisterModule(),
    ),
  ];
}
