import 'package:flutter_modular_route_guard/app/modules/profile/profile_store.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_modular_route_guard/app/routes/guards/admin_guard.dart';

import 'pages/admin/admin_page.dart';
import 'pages/me/me_page.dart';
import 'profile_page.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => ProfileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute(
      '/',
      child: (_, args) => ProfilePage(),
    ),
    ChildRoute(
      '/me',
      child: (_, args) => MePage(),
    ),
  ];
}
