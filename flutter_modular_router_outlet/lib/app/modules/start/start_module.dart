import 'package:flutter_modular_router_outlet/app/modules/start/pages/configuration_page.dart';
import 'package:flutter_modular_router_outlet/app/modules/start/profile/profile_module.dart';
import 'package:flutter_modular_router_outlet/app/modules/start/start_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_router_outlet/app/modules/start/users/users_module.dart';
import './start_page.dart';
import 'profile/profile_store.dart';

class StartModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.singleton((i) => StartStore()),
    /**
     * Using this way the problem not occurs.
     */
    Bind.singleton((i) => ProfileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => StartPage(), children: [
      ChildRoute(
        '/configuration/:id',
        child: (_, args) => ConfigurationPage(id: args.params['id']),
      ),
      ModuleRoute(
        '/profile',
        module: ProfileModule(),
      ),
      ModuleRoute(
        '/users',
        module: UsersModule(),
      ),
    ]),
  ];
}
