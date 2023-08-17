import 'package:bloc/bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';

import '../../repositories/user_repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc(super.initialState, this.userRepository) {
    on<CreateUserEvent>(_createUser);
    on<UpdateUserEvent>(_updateUser);
    on<DeleteUserEvent>(_deleteUser);
  }

  void _createUser(CreateUserEvent event, Emitter<UserState> emit) async {
    final userList = await userRepository.createUser(event.newUser);
    emit(UserCreatingState(userList));
  }

  void _updateUser(UpdateUserEvent event, Emitter<UserState> emit) async {
    final userList =
        await userRepository.updateUser(event.key, event.updatedUser);
    emit(UserUpdatingState(userList));
  }

  void _deleteUser(DeleteUserEvent event, Emitter<UserState> emit) async {
    final userList = await userRepository.deleteUser(event.key);
    emit(UserDeletingState(userList));
  }
}
