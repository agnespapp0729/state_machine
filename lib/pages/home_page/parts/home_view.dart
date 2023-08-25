import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/blocs/user_bloc/user_state.dart';
import 'package:state_machine/pages/home_page/parts/bg_color_change.dart';
import 'package:state_machine/pages/home_page/parts/show_form.dart';

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

  List<Map<String, dynamic>> userList = [];

  Color? _selectedBgColor;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserBloc, UserState>(builder: (context, state) {
      if (state is UserInitState) {
        userList = state.users;
      }
      if (state is UserUpdatingState) {
        userList = state.users;
      }
      if (state is UserCreatingState) {
        userList = state.users;
      }
      if (state is UserCreatingState) {
        userList = state.users;
      }
      if (state is ColorChangingState) {
        _selectedBgColor = state.color;
      }

      return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.orange,
          child: const Icon(Icons.add),
          onPressed: () => ShowFormEmbedder(
            userKey: null,
            actualUsers: userList,
            bloc: context.read<UserBloc>(),
          )..showForm(context),
        ),
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: const Text('List users'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  const BgColorChange(),
                  Container(
                    color: _selectedBgColor,
                    child: ListView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: userList.length,
                        itemBuilder: (context, index) {
                          final currentUser = userList[index];

                          return Card(
                            color: Colors.orange,
                            margin: const EdgeInsets.all(10),
                            elevation: 3,
                            child: ListTile(
                              title: Text(currentUser['name']),
                              subtitle: Text(currentUser['age'].toString()),
                              trailing: Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  IconButton(
                                      onPressed: () => ShowFormEmbedder(
                                          bloc: context.read<UserBloc>(),
                                          userKey: currentUser['key'],
                                          actualUsers: userList)
                                        ..showForm(context),
                                      icon: const Icon(Icons.edit)),
                                  IconButton(
                                      onPressed: () => context
                                          .read<UserBloc>()
                                          .add(DeleteUserEvent(
                                              currentUser['key'])),
                                      icon: const Icon(Icons.delete)),
                                ],
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/data');
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                ),
                child: const Text("Get emulator data"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
