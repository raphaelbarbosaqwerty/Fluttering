import 'package:mobx/mobx.dart';

part 'basket_store.g.dart';

class BasketStore = _BasketStoreBase with _$BasketStore;
abstract class _BasketStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}