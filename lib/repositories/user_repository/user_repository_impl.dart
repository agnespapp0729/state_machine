import 'dart:async';

import 'package:hive/hive.dart';
import 'package:state_machine/main.dart';
import 'package:state_machine/model/user_model/users.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final Box _userBox;
  Users users = box.get('user');

  UserRepositoryImpl(this._userBox);

  StreamController<List<Map<String, dynamic>>> usersStream = StreamController();

  @override
  Stream get getUsersStream => usersStream.stream;

  @override
  List<Map<String, dynamic>> getUsers() {
    List<Map<String, dynamic>> users = _userBox.keys.map((key) {
      final value = _userBox.get(key);
      return {"key": key, "name": value["name"], "age": value["age"]};
    }).toList();
    return users;
  }

  @override
  Future<List<Map<String, dynamic>>> createUser(
      Map<String, dynamic> newUser) async {
    await _userBox.add(newUser);
    usersStream.add(getUsers());
    return getUsers();
  }

  @override
  Future<List<Map<String, dynamic>>> updateUser(
      int key, Map<String, dynamic> user) async {
    await _userBox.put(key, user);
    usersStream.add(getUsers());
    return getUsers();
  }

  @override
  Future<List<Map<String, dynamic>>> deleteUser(int key) async {
    await _userBox.delete(key);
    usersStream.add(getUsers());
    return getUsers();
  }
}
