import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_router_outlet/app/modules/login/login_module.dart';

void main() {
  setUpAll(() {
    initModule(LoginModule());
  });
}
