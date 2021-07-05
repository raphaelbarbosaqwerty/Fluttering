import 'package:flutter_modular_drawer_menu/app/modules/register/register_store.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'register_page.dart';

class RegisterModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => RegisterStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => RegisterPage()),
  ];
}
