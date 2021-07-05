import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_router_outlet/app/modules/login/login_store.dart';
 
void main() {
  late LoginStore store;

  setUpAll(() {
    store = LoginStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}