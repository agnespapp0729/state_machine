import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';
import 'package:state_machine/pages/home_page/parts/build_scaffold.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void dispose() {
    super.dispose();
  }

  List<Map<String, dynamic>>? userList = [];

  Color? selectedBgColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      if (state is UserInitState) {
        userList = state.users!;
      }
      if (state is UserUpdatingState) {
        userList = state.users;
      }
      if (state is UserCreatingState) {
        userList = state.users;
      }
      if (state is UserDeletingState) {
        userList = state.users;
      }
      if (state is ColorChangingState) {
        selectedBgColor = state.color;
      }

      return BuildScaffold(userList, selectedBgColor);
    });
  }
}
