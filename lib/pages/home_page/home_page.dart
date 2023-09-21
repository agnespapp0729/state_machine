import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/pages/home_page/parts/home_view.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';
import 'package:state_machine/repositories/user_repository/user_repository_impl.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  late UserRepository userRepository;

  @override
  initState(){
    super.initState();
    userRepository = UserRepositoryImpl();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        return BlocProvider(
          create: (context) => UserBloc(userRepository),
          child: const HomeView(),
        );
      }
    );
  }
}
