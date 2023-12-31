import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/pages/home_page/parts/list_user.dart';
import 'package:state_machine/pages/home_page/parts/show_form.dart';

class BuildScaffold extends StatefulWidget {
  final List<Map<String, dynamic>>? userList;
  final Color? selectedBgColor;
  const BuildScaffold(
    this.userList,
    this.selectedBgColor, {
    super.key,
  });

  @override
  State<BuildScaffold> createState() => _BuildScaffoldState();
}

class _BuildScaffoldState extends State<BuildScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('List users'),
      ),
      floatingActionButton: _buildFloatingActionButton(context),
      body: _buildUserList(),
    );
  }

  Widget _buildFloatingActionButton(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.orange,
      child: const Icon(Icons.add),
      onPressed: () {
        ShowFormEmbedder(
          userKey: null,
          actualUsers: widget.userList,
          bloc: context.read<UserBloc>(),
        ).showForm(context);
      },
    );
  }

  Widget _buildUserList() {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListUsers(
              userList: widget.userList,
              selectedBgColor: widget.selectedBgColor),
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
    );
  }
}
