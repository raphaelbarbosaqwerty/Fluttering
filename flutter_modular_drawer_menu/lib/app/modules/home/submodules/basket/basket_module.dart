import 'package:flutter_modular/flutter_modular.dart';
import 'basket_page.dart';
import 'basket_store.dart';

class BasketModule extends Module {
  @override
  final List<Bind> binds = [
    Bind.lazySingleton((i) => BasketStore()),
  ];

  @override
  final List<ModularRoute> routes = [
    ChildRoute('/', child: (_, args) => BasketPage()),
  ];
}
