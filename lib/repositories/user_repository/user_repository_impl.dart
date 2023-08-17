import 'package:hive/hive.dart';
import 'package:state_machine/repositories/user_repository/user_repository.dart';

class UserRepositoryImpl extends UserRepository {
  final Box _userBox;

  UserRepositoryImpl(this._userBox);

  @override
  List<Map<String, dynamic>> getUsers() {
    return _userBox.keys.map((key) {
      final value = _userBox.get(key);
      return {"key": key, "name": value["name"], "age": value["age"]};
    }).toList();
  }

  @override
  Future<List<Map<String, dynamic>>> createUser(
      Map<String, dynamic> newUser) async {
    await _userBox.add(newUser);
    return getUsers();
  }

  @override
  Future<List<Map<String, dynamic>>> updateUser(
      int key, Map<String, dynamic> user) async {
    await _userBox.put(key, user);
    return getUsers();
  }

  @override
  Future<List<Map<String, dynamic>>> deleteUser(int key) async {
    await _userBox.delete(key);
    return getUsers();
  }
}
