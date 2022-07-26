abstract class HomeState {}

class HomeLoading extends HomeState {}

class HomeLoaded extends HomeState {
  final List<String> names;
  HomeLoaded(this.names);
}

class HomeError extends HomeState {
  final String message;

  HomeError(this.message);
}
