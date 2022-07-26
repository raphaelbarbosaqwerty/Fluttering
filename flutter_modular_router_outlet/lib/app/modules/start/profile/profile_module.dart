import 'package:flutter_modular/flutter_modular.dart';

import 'profile_page.dart';
import 'profile_store.dart';

class ProfileModule extends Module {
  @override
  final List<Bind> binds = [
    /**
     * When we pass the arguments, the Store is not found. And we need to initialize the store inside the StartModule (BUG)
     */
    // Bind.singleton((i) => ProfileStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/:id/', child: (_, args) => ProfilePage(id: args.params['id'])),
  ];
}
