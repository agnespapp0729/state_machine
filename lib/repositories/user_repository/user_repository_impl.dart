import 'dart:async';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:state_machine/model/user_model/users.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';

@Injectable(as: UserRepository)
class UserRepositoryImpl extends UserRepository {
  late Box? userBox;
  late Users? users;

  UserRepositoryImpl() {
    _init();
  }

  void _init() async {
    userBox = Hive.box('user_box');
    users = await userBox!.get('user');

    usersStreamControll.onCancel = () async {
      await usersStreamControll.close();
    };
  }

  StreamController<List<Map<String, dynamic>>> usersStreamControll =
      StreamController();

  @override
  Stream<List<Map<String, dynamic>>> get getUsersStream =>
      usersStreamControll.stream;

  @override
  List<Map<String, dynamic>>? getUsers() {
    List<Map<String, dynamic>> users = userBox!.keys.map((key) {
      final value = userBox!.get(key);
      return {"key": key, "name": value["name"], "age": value["age"]};
    }).toList();
    return users;
  }

  @override
  Future<List<Map<String, dynamic>>> createUser(
      Map<String, dynamic> newUser) async {
    await userBox!.add(newUser);
    usersStreamControll.add(getUsers()!);
    return getUsers()!;
  }

  @override
  Future<List<Map<String, dynamic>>> updateUser(
      int key, Map<String, dynamic> user) async {
    await userBox!.put(key, user);
    usersStreamControll.add(getUsers()!);
    return getUsers()!;
  }

  @override
  Future<List<Map<String, dynamic>>?>? deleteUser(int key) async {
    await userBox!.delete(key);
    if (userBox?.isEmpty ?? true) {
      return Future.value(null);
    }
    final users = getUsers()!;
    usersStreamControll.add(users);
    return users;
  }
}
