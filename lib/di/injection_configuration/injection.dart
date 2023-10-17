
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';
import 'package:state_machine/repositories/user_repository/user_repository_impl.dart';

import 'injection.config.dart';

final getIt = GetIt.instance;  
  
@InjectableInit(  
  initializerName:      'init', // default  
  preferRelativeImports: true,  // default  
  asExtension:           true,  // default  
)  
Future<void> configureDependencies() async {
  getIt.init();
  //getIt.registerLazySingleton<UserRepository>(() => UserRepositoryImpl());
  //getIt.registerFactory<UserBloc>(() => UserBloc(getIt<UserRepository>()));
}
