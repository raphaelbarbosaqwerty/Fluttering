import 'package:flutter_modular/flutter_modular.dart';

class AdminGuard implements RouteGuard {
  @override
  Future<bool> canActivate(String url, ModularRoute route) {
    print(url);
    if (url == '/admin') {
      // Return `true` to allow access
      return Future.value(true);
    } else {
      // Return `false` to disallow access
      return Future.value(false);
    }
  }

  @override
  String? get guardedRoute => '/denied';
}
