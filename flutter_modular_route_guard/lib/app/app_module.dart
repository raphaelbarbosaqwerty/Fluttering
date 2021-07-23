import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_route_guard/app/core/pages/access_denied.dart';
import 'package:flutter_modular_route_guard/app/modules/profile/profile_module.dart';

import 'modules/home/home_module.dart';
import 'modules/profile/pages/admin/admin_page.dart';
import 'routes/guards/admin_guard.dart';

class AppModule extends Module {
  @override
  final List<Bind> binds = [];

  @override
  final List<ModularRoute> routes = [
    ModuleRoute(
      Modular.initialRoute,
      module: HomeModule(),
    ),
    ModuleRoute(
      '/profile',
      module: ProfileModule(),
    ),
    ChildRoute(
      '/denied',
      child: (_, args) => AccessDenied(),
    ),
    ChildRoute(
      '/admin',
      child: (_, args) => AdminPage(),
      guardedRoute: '/profile',
      guards: [
        AdminGuard(),
      ],
    ),
  ];
}
