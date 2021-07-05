import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_drawer_menu/app/modules/home/submodules/basket/basket_module.dart';
import 'package:flutter_modular_drawer_menu/app/modules/home/submodules/profile/profile_module.dart';
import '../home/home_store.dart';

import 'home_page.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => HomeStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      Modular.initialRoute,
      child: (_, args) => HomePage(),
    ),
    ModuleRoute(
      '/profile',
      module: ProfileModule(),
    ),
    ModuleRoute(
      '/basket',
      module: BasketModule(),
    ),
  ];
}
