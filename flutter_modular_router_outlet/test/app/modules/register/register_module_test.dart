import 'package:flutter_modular_test/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_router_outlet/app/modules/register/register_module.dart';

void main() {
  setUpAll(() {
    initModule(RegisterModule());
  });
}
