import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';
import 'package:state_machine/repositories/color_repository/color_repository.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;
  final ColorRepository colorRepository;

  Color? color;

  List<Map<String, dynamic>>? userList = [];

  late StreamSubscription<List<Map<String, dynamic>>>? userStreamSubscription;
  late StreamSubscription<Color>? colorStreamSubscription;

  @override
  Future<void> close() async {
    await userStreamSubscription?.cancel();
    userStreamSubscription = null;
    super.close();
  }

  UserBloc(this.userRepository, this.colorRepository)
      : super(UserInitState(users: userRepository.getUsers())) {
    userStreamSubscription = userRepository.getUsersStream.listen((event) {
      add(InitEvent(event));
    });
    colorStreamSubscription = colorRepository.getColorStream.listen((event) {});

    on<InitEvent>(_initHandler);
    on<CreateUserEvent>(_createUser);
    on<UpdateUserEvent>(_updateUser);
    on<DeleteUserEvent>(_deleteUser);
    on<ChangeColorEvent>(_changingColor);
  }

  void _initHandler(UserEvent event, Emitter<UserState> emit) async {
    userList = userRepository.getUsers();
    emit(UserInitState(users: userList));
  }

  void _createUser(CreateUserEvent event, Emitter<UserState> emit) async {
    userRepository.createUser(event.newUser);
  }

  void _updateUser(UpdateUserEvent event, Emitter<UserState> emit) async {
    userRepository.updateUser(event.key, event.updatedUser);
  }

  void _deleteUser(DeleteUserEvent event, Emitter<UserState> emit) async {
    userRepository.deleteUser(event.key);
  }

  void _changingColor(ChangeColorEvent event, Emitter<UserState> emit) async {
    colorRepository.setColor(event.color);
  }
}
