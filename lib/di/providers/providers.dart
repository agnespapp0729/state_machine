

import 'package:state_machine/di/injection_configuration/injection.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';

final UserRepository userRepositoryProvider = getIt<UserRepository>();
