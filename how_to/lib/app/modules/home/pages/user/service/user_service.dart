class UserService {
  Future<void> testing() async {
    await Future.delayed(Duration(seconds: 3));
    print('Hi 3 seconds');
  }
}
