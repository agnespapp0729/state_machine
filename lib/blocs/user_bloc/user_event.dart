abstract class UserEvent {
  List<Object> get props => [];
}

class RefreshUserEvent extends UserEvent {
  @override
  List<Object> get props => [];
}

class CreateUserEvent extends UserEvent {
  final Map<String, dynamic> newUser;

  CreateUserEvent(this.newUser);
  @override
  List<Object> get props => [];
}

class UpdateUserEvent extends UserEvent {
  final int key;
  final Map<String, dynamic> updatedUser;

  UpdateUserEvent(this.key, this.updatedUser);
  @override
  List<Object> get props => [];
}

class DeleteEvent extends UserEvent {
  final int key;

  DeleteEvent(this.key);
  @override
  List<Object> get props => [];
}
