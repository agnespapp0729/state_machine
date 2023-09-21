import 'dart:async';

import 'package:hive/hive.dart';
import 'package:state_machine/main.dart';
import 'package:state_machine/model/user_model/users.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  late Box?   userBox;
  late Users? users;

UserRepositoryImpl(){
  _init();
}

void _init() async {
  Hive.registerAdapter(UsersAdapter());
  userBox = await Hive.box('user_box');
  users   = await userBox!.get('user');
}

  StreamController<List<Map<String, dynamic>>> usersStream = StreamController();

  @override
  Stream get getUsersStream => usersStream.stream;

  @override
  List<Map<String, dynamic>>? getUsers(){
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
    usersStream.add( await getUsers()!);
    return getUsers()!;
  }

  @override
  Future<List<Map<String, dynamic>>> updateUser(
      int key, Map<String, dynamic> user) async {
    await userBox!.put(key, user);
    usersStream.add( await getUsers()!);
    return getUsers()!;
  }

  @override
  Future<List<Map<String, dynamic>>?>? deleteUser(int key) async {
    await userBox!.delete(key);
    if (userBox?.isEmpty??true){
      return Future.value(null);
    }
    final users = await getUsers()!;
    usersStream.add( users );
    return users;
  }
}
