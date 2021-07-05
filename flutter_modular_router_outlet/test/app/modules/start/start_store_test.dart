import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular_router_outlet/app/modules/start/start_store.dart';
 
void main() {
  late StartStore store;

  setUpAll(() {
    store = StartStore();
  });

  test('increment count', () async {
    expect(store.value, equals(0));
    store.increment();
    expect(store.value, equals(1));
  });
}