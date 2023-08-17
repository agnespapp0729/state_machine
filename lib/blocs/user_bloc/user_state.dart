abstract class UserState {
  List<Object> get props => [];
}

class UserCreatingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserCreatingState(this.users);
  @override
  List<Object> get props => [];
}

class UserUpdatingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserUpdatingState(this.users);
  @override
  List<Object> get props => [];
}

class UserDeletingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserDeletingState(this.users);
  @override
  List<Object> get props => [];
}
