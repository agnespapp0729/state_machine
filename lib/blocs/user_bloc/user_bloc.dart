import 'package:bloc/bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';

import '../../repositories/user_repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  List<Map<String, dynamic>> _userList = [];//maybe this is not necessary

  UserBloc(this.userRepository) : super( InitState( userRepository.getUsers() ) ){
    on<InitEvent>(_initHandler);
    on<CreateUserEvent>(_createUser);
    on<UpdateUserEvent>(_updateUser);
    on<DeleteUserEvent>(_deleteUser);
  }

  void _initHandler(UserEvent event, Emitter<UserState> emit) async {
    emit(InitState(_userList));
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
    _userList = await userRepository.deleteUser(event.key);
    emit(UserDeletingState(_userList));
  }
}
