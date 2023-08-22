abstract class UserState {}

class InitState extends UserState {
  final List<Map<String, dynamic>> users;

  InitState(this.users);

  List<Object> get props => [users];
}

class UserCreatingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserCreatingState(this.users);

  List<Object> get props => [users];
}

class UserUpdatingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserUpdatingState(this.users);

  List<Object> get props => [users];
}

class UserDeletingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserDeletingState(this.users);

  List<Object> get props => [users];
}
