import 'package:get_it/get_it.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';
import 'package:state_machine/repositories/user_repository/user_repository_impl.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
  locator.registerFactory<UserBloc>(() => UserBloc(locator<UserRepository>()));
}
