import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';
import 'package:state_machine/pages/home_page/parts/bg_color_change.dart';
import 'package:state_machine/pages/home_page/parts/show_form.dart';

class ListUsers extends StatelessWidget {
  final List<Map<String, dynamic>>? userList;
  final Color? selectedBgColor;

  const ListUsers(
      {super.key, required this.userList, required this.selectedBgColor});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BgColorChange(),
        Container(
          color: selectedBgColor,
          child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: userList?.length ?? 0,
              itemBuilder: (context, index) {
                final currentUser = userList?[index];

                return Card(
                  color: Colors.orange,
                  margin: const EdgeInsets.all(10),
                  elevation: 3,
                  child: ListTile(
                    title: Text(currentUser?['name']),
                    subtitle: Text(currentUser!['age'].toString()),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (userList != null) ...[
                          IconButton(
                              onPressed: () => ShowFormEmbedder(
                                  bloc: context.read<UserBloc>(),
                                  userKey: currentUser!['key'],
                                  actualUsers: userList!)
                                ..showForm(context),
                              icon: const Icon(Icons.edit)),
                          IconButton(
                              onPressed: () => context
                                  .read<UserBloc>()
                                  .add(DeleteUserEvent(currentUser!['key'])),
                              icon: const Icon(Icons.delete)),
                        ]
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}
