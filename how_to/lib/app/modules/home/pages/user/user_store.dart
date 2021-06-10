import 'package:mobx/mobx.dart';

import 'service/user_service.dart';

part 'user_store.g.dart';

class UserStore = _UserStoreBase with _$UserStore;

abstract class _UserStoreBase with Store {
  final UserService userService;

  _UserStoreBase({required this.userService});

  @observable
  String name = "";

  @action
  setName(String value) => name = value;

  @action
  Future<void> callTheService() async {
    await userService.testing();
  }
}
