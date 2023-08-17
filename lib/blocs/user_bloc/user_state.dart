abstract class UserState {}

class UserCreatingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserCreatingState(this.users);

  List<Object> get props => [];
}

class UserUpdatingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserUpdatingState(this.users);

  List<Object> get props => [];
}

class UserDeletingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserDeletingState(this.users);

  List<Object> get props => [];
}
