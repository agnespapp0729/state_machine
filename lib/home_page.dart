import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _users = [];

  final _userBox = Hive.box('user_box');

  @override
  void initState() {
    super.initState();
    _refreshUsers();
  }

  void _refreshUsers() {
    final data = _userBox.keys.map((key) {
      final value = _userBox.get(key);
      return {"key": key, "name": value["name"], "age": value["age"]};
    }).toList();

    setState(() {
      _users = data.reversed.toList();
    });
  }

  Future<void> _createUser(Map<String, dynamic> newUser) async {
    await _userBox.add(newUser);
    _refreshUsers();
  }

  /*Future<void> _readUser(int key) async {
    final user = _userBox.get(key);
    return user;
  }*/

  Future<void> _updateUser(int key, Map<String, dynamic> user) async {
    await _userBox.put(key, user);
    _refreshUsers();
  }

  Future<void> _deleteUser(int key) async {
    await _userBox.delete(key);
    _refreshUsers();
  }

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _ageController = TextEditingController();

  void _showForm(BuildContext ctx, int? key) async {
    if (key != null) {
      final existingUser =
          _users.firstWhere((element) => element['key'] == key);
      _nameController.text = existingUser['name'];
      _ageController.text = existingUser['age'];
    }

    showModalBottomSheet(
      context: ctx,
      elevation: 5,
      isScrollControlled: true,
      builder: (_) => Container(
        padding: EdgeInsets.only(
            bottom: MediaQuery.of(ctx).viewInsets.bottom,
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
                onPressed: () async {
                  if (key == null) {
                    _createUser({
                      "name": _nameController.text,
                      "age": _ageController.text
                    });
                  }
                  if (key != null) {
                    _updateUser(key, {
                      "name": _nameController.text.trim(),
                      "age": _ageController.text.trim()
                    });
                  }
                  _nameController.text = '';
                  _ageController.text = '';

                  Navigator.of(context).pop();
                },
                child: Text(key == null ? 'Create' : 'Update')),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List users'),
      ),
      body: _users.isEmpty
          ? const Center(
              child: Text(
                'No users found',
                style: TextStyle(fontSize: 30),
              ),
            )
          : ListView.builder(
              itemCount: _users.length,
              itemBuilder: (_, index) {
                final currentUser = _users[index];
                return Card(
                  color: Colors.deepOrange,
                  margin: const EdgeInsets.all(10),
                  elevation: 3,
                  child: ListTile(
                    title: Text(currentUser['name']),
                    subtitle: Text(currentUser['age']),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                            onPressed: () =>
                                _showForm(context, currentUser['key']),
                            icon: const Icon(Icons.edit)),
                        IconButton(
                            onPressed: () => _deleteUser(currentUser['key']),
                            icon: const Icon(Icons.delete)),
                      ],
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }
}
