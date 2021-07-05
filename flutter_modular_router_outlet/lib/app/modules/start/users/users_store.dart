import 'package:mobx/mobx.dart';

part 'users_store.g.dart';

class UsersStore = _UsersStoreBase with _$UsersStore;
abstract class _UsersStoreBase with Store {

  @observable
  int value = 0;

  @action
  void increment() {
    value++;
  } 
}