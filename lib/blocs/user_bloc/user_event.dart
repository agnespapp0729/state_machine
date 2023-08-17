abstract class UserEvent {}

class RefreshUserEvent extends UserEvent {
  List<Object> get props => [];
}

class CreateUserEvent extends UserEvent {
  final Map<String, dynamic> newUser;

  CreateUserEvent(this.newUser);

  List<Object> get props => [];
}

class UpdateUserEvent extends UserEvent {
  final int key;
  final Map<String, dynamic> updatedUser;

  UpdateUserEvent(this.key, this.updatedUser);

  List<Object> get props => [];
}

class DeleteUserEvent extends UserEvent {
  final int key;

  DeleteUserEvent(this.key);

  List<Object> get props => [];
}
