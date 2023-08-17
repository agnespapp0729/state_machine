import 'package:bloc/bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';

import '../../repositories/user_repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository userRepository;

  UserBloc(super.initialState, this.userRepository) {
    on<CreateUserEvent>(_createUser);
  }

  void _createUser(UserEvent event, Emitter<UserState> emit) async {
    final userList = await userRepository.createUser(event.newUser);
    emit(UserCreatingState(userList));
  }
}
