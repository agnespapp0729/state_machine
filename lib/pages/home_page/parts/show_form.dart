import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:state_machine/blocs/user_bloc/user_event.dart';

class ShowFormEmbedder {
  final dynamic userKey;
  final List<Map<String, dynamic>> actualUsers;
  final Bloc bloc;

  ShowFormEmbedder(
      {required this.bloc, required this.userKey, required this.actualUsers});

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  void showForm(BuildContext context) async {
    if (userKey != null) {
      final Map<String, dynamic> existingUser =
          actualUsers.firstWhere((element) => element['key'] == userKey);
      _nameController.text = existingUser['name'];
      _ageController.text = existingUser['age'];
    }

    showModalBottomSheet(
      context: context,
      elevation: 5,
      isScrollControlled: true,
      builder: (context) => Container(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
            top: 15,
            left: 15,
            right: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: _nameController,
              decoration: const InputDecoration(hintText: "Name"),
            ),
            const SizedBox(
              height: 10,
            ),
            TextField(
              controller: _ageController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(hintText: "Age"),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                onPressed: () async {
                  if (userKey == null) {
                    bloc.add(CreateUserEvent({
                      "name": _nameController.value,
                      "age": _ageController.text
                    }));
                  }
                  if (userKey != null) {
                    bloc.add(UpdateUserEvent(userKey!, {
                      "name": _nameController.text,
                      "age": _ageController.text
                    }));
                  }
                  _nameController.text = '';
                  _ageController.text = '';

                  Navigator.of(context).pop();
                },
                child: Text(userKey == null ? 'Create' : 'Update')),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
