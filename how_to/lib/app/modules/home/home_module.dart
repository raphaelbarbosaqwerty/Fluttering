import 'package:flutter_modular/flutter_modular.dart';
import 'package:how_to/app/modules/home/pages/user/service/user_service.dart';

import '../home/home_store.dart';
import 'home_page.dart';
import 'pages/user/user_page.dart';
import 'pages/user/user_store.dart';

class HomeModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton(
      (i) => HomeStore(),
    ),
    // Inject the instance of UserService inside the UserStore
    Bind.singleton(
      (i) => UserStore(userService: i.get()),
    ),
    Bind.singleton((i) => UserService()),
  ];

  @override
  final List<ModularRoute> routes = [
    // /home/
    // /home/user
    // /home/user/kuringa
    ChildRoute(Modular.initialRoute, child: (_, args) => HomePage()),
    ChildRoute(
      '/user/:name/:age/:id',
      child: (_, args) => UserPage(
        name: args.params['name'],
        age: args.params['id'],
        userModel: args.data,
      ),
    ),
  ];
}
