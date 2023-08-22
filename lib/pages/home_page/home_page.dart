import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/pages/home_page/parts/home_view.dart';
import 'package:state_machine/repositories/user_repository/user_repository_impl.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final userRepository = UserRepositoryImpl(Hive.box('user_box'));

    return BlocProvider(
      create: (context) => UserBloc(userRepository),
      child:  const HomeView(),
    );
  }
}
