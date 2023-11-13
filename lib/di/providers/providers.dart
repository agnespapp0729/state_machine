import 'package:state_machine/di/configuration/injection.dart';
import 'package:state_machine/repositories/color_repository/color_repository.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';

final UserRepository userRepoProvider = getIt<UserRepository>();
final ColorRepository colorRepoProvider = getIt<ColorRepository>();
