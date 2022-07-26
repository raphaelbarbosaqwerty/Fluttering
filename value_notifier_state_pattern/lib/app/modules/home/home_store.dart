import 'package:flutter/cupertino.dart';
import 'package:value_notifier_state_pattern/app/modules/home/home_state.dart';

class HomeStore extends ValueNotifier<HomeState> {
  HomeStore() : super(HomeLoading());

  Future<void> changeUserName(String name) async {
    value = HomeLoading();
    await Future.delayed(const Duration(seconds: 2));
    value = HomeLoaded(users);
    // value = HomeError("Error message");
  }
}

List<String> users = [
  "Kuringa",
  "Raphael",
];
