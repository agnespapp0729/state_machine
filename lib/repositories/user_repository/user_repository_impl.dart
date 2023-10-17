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

    //Maybe not realy need because it is a broadcast stream.
    //The basic stream need it
    usersStreamController.onCancel = () async {
      await usersStreamController.close();
    };
  }

  StreamController<List<Map<String, dynamic>>> usersStreamController = StreamController<List<Map<String, dynamic>>>.broadcast();

  @override
  Stream<List<Map<String, dynamic>>> get getUsersStream => usersStreamController.stream;

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
    usersStreamController.add(getUsers()!);
    return getUsers()!;
  }

  @override
  Future<List<Map<String, dynamic>>> updateUser(
      int key, Map<String, dynamic> user) async {
    await userBox!.put(key, user);
    usersStreamController.add(getUsers()!);
    return getUsers()!;
  }

  @override
  Future<List<Map<String, dynamic>>?>? deleteUser(int key) async {
    await userBox!.delete(key);
    if (userBox?.isEmpty ?? true) {
      return Future.value(null);
    }
    final users = getUsers()!;
    usersStreamController.add(users);
    return users;
  }
}
