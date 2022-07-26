import 'dart:html';

// SRP
class User {
  late final UserRepository repository;

  User() {
    repository = UserRepository();
  }

  validateName() {}

  saveToDatabase() {
    repository.saveToDatabase();
  }
}

class UserRepository {
  saveToDatabase() {
    print("Saving on internal database");
  }
}
