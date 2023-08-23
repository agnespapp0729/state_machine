import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';

import '../../repositories/user_repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  Color? color;

  List<Map<String, dynamic>> userList = [];

  UserBloc(this.userRepository)
      : super(UserInitState(userRepository.getUsers())) {
    userRepository.getUsersStream.listen((event) => add(InitEvent(event)));
    on<InitEvent>(_initHandler);
    on<CreateUserEvent>(_createUser);
    on<UpdateUserEvent>(_updateUser);
    on<DeleteUserEvent>(_deleteUser);
    on<ChangeColorEvent>(_changingColor);
  }

  void _initHandler(UserEvent event, Emitter<UserState> emit) async {
    emit(UserInitState(userList));
  }

  void _createUser(CreateUserEvent event, Emitter<UserState> emit) async {
    _userList = await userRepository.createUser(event.newUser);
    emit(UserCreatingState(_userList));
  }

  void _updateUser(UpdateUserEvent event, Emitter<UserState> emit) async {
    _userList = await userRepository.updateUser(event.key, event.updatedUser);
    emit(UserUpdatingState(_userList));
  }

  void _deleteUser(DeleteUserEvent event, Emitter<UserState> emit) async {
    final userList = await userRepository.deleteUser(event.key);
    emit(UserDeletingState(userList));
  }

  void _changingColor(ChangeColorEvent event, Emitter<UserState> emit) async {
    color = event.color;
    emit(ColorChangingState(color!));
  }
}
