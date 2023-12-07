part of 'user_bloc.dart';

@freezed
class UserState with _$UserState {
  const factory UserState.init(List<Map<String, dynamic>> users) =
      UserInitState;
  const factory UserState.create(List<Map<String, dynamic>> users) =
      UserCreatingState;
  const factory UserState.update(List<Map<String, dynamic>> users) =
      UserUpdatingState;
  const factory UserState.delete(List<Map<String, dynamic>> users) =
      UserDeletingState;
  const factory UserState.colorChange(Color Color) = ColorChangingState;
}
