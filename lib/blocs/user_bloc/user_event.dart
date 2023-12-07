part of 'user_bloc.dart';

@freezed
class UserEvent with _$UserEvent {
  const factory UserEvent.refresh() = RefreshUserEvent;
  const factory UserEvent.init(List<Map<String, dynamic>> newUser) = InitEvent;
  const factory UserEvent.create(Map<String, dynamic> newUser) =
      CreateUserEvent;
  const factory UserEvent.update(int key, Map<String, dynamic> updatedUser) =
      UpdateUserEvent;
  const factory UserEvent.delete(int key) = DeleteUserEvent;
  const factory UserEvent.colorChangeByUser(Color color) =
      ChangeColorEventRequestedByUser;
  const factory UserEvent.colorChangeFromStream(Color color) =
      ChangeColorEventChangedFromStream;
}
