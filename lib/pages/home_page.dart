import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:state_machine/repositories/user_repository/user_repository_impl.dart';

import '../repositories/user_repository/user_repository.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserRepository _userRepository;
  List<Map<String, dynamic>> _users = [];

  _HomePageState() : _userRepository = UserRepositoryImpl(Hive.box('user_box'));

  @override
  void initState() {
    super.initState();
    _refreshUsers();
  }

  Future<void> _refreshUsers() async {
    final data = _userRepository.getUsers();
    setState(() {
      _users = data.reversed.toList();
    });
  }

  Future<void> _createUser(Map<String, dynamic> newUser) async {
    await _userRepository.createUser(newUser);
    _refreshUsers();
  }

  Future<void> _updateUser(int key, Map<String, dynamic> user) async {
    await _userRepository.updateUser(key, user);
    _refreshUsers();
  }

  Future<void> _deleteUser(int key) async {
    await _userRepository.deleteUser(key);
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
                style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
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

  Color _selectedBgColor = Colors.white;

  void _onBgColorChanged(Color? color) {
    setState(() {
      _selectedBgColor = color!;
    });
  }

  DropdownButton<Color> _buildDropdownButton() {
    return DropdownButton<Color>(
      value: _selectedBgColor,
      onChanged: _onBgColorChanged,
      items: const <DropdownMenuItem<Color>>[
        DropdownMenuItem<Color>(
          value: Colors.white,
          child: Text("White"),
        ),
        DropdownMenuItem<Color>(
          value: Colors.blueAccent,
          child: Text("Blue"),
        ),
        DropdownMenuItem<Color>(
          value: Colors.black,
          child: Text("Black"),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('List users'),
      ),
      body: _users.isEmpty
          ? const Center(
              child: Text(
                'No users found',
                style: TextStyle(fontSize: 30),
              ),
            )
          : SingleChildScrollView(
              child: Column(
                children: [
                  Column(
                    children: [
                      _buildDropdownButton(),
                      Container(
                        color: _selectedBgColor,
                        child: ListView.builder(
                            scrollDirection: Axis.vertical,
                            shrinkWrap: true,
                            itemCount: _users.length,
                            itemBuilder: (_, index) {
                              final currentUser = _users[index];
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
                                          onPressed: () => _showForm(
                                              context, currentUser['key']),
                                          icon: const Icon(Icons.edit)),
                                      IconButton(
                                          onPressed: () =>
                                              _deleteUser(currentUser['key']),
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
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showForm(context, null),
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }
}
