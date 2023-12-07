<<<<<<< Updated upstream
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@freezed
class UserEvent {}

class RefreshUserEvent extends UserEvent {
  List<Object> get props => [];
}

class InitEvent extends UserEvent {
  final List<Map<String, dynamic>>? newUser;

  InitEvent(this.newUser);

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

class ChangeColorEventRequestedByUser extends UserEvent {
  final Color color;

  ChangeColorEventRequestedByUser(this.color);

  List<Object> get props => [color];
}

class ChangeColorEventChangedFromStream extends UserEvent {
  final Color color;

  ChangeColorEventChangedFromStream(this.color);

  List<Object> get props => [color];
=======
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
  const factory UserEvent.colorChangeByUser(Color Color) =
      ChangeColorEventRequestedByUser;
  const factory UserEvent.colorChangeFromStream(Color Color) =
      ChangeColorEventChangedFromStream;
>>>>>>> Stashed changes
}
