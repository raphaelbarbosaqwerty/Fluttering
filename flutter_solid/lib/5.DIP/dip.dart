// DIP
class User {
  final IUserRepository repository;

  User(this.repository);

  validateName() {}

  saveToDatabase() {
    repository.saveToDatabase();
  }
}

abstract class IUserRepository {
  saveToDatabase();
}

class UserRepository implements IUserRepository {
  @override
  saveToDatabase() {
    print("Saving on internal database");
  }
}

class UserRepositorySpy implements IUserRepository {
  @override
  saveToDatabase() {}
}

void main() {
  final User user = User(UserRepository());
  user.saveToDatabase();
}
