<<<<<<< Updated upstream
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class UserState {}

class UserInitState extends UserState {
  final List<Map<String, dynamic>>? users;

  UserInitState({this.users});
  List<Object> get props => [users!];
}

class UserCreatingState extends UserState {
  final List<Map<String, dynamic>> users;

  UserCreatingState(this.users);

  List<Object> get props => [users];
}

class UserUpdatingState extends UserState {
  final List<Map<String, dynamic>>? users;

  UserUpdatingState(this.users);

  List<Object> get props => [users!];
}

class UserDeletingState extends UserState {
  final List<Map<String, dynamic>>? users;

  UserDeletingState(this.users);

  List<Object> get props => [users!];
}

class ColorChangingState extends UserState {
  final Color color;

  ColorChangingState(this.color);

  List<Object> get props => [color];
=======
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
>>>>>>> Stashed changes
}
