import 'package:hive/hive.dart';

class UserRepository {
  final Box _userBox;

  UserRepository(this._userBox);

  List<Map<String, dynamic>> getUsers() {
    return _userBox.keys.map((key) {
      final value = _userBox.get(key);
      return {"key": key, "name": value["name"], "age": value["age"]};
    }).toList();
  }

  Future<void> createUser(Map<String, dynamic> newUser) async {
    await _userBox.add(newUser);
  }

  Future<void> updateUser(int key, Map<String, dynamic> user) async {
    await _userBox.put(key, user);
  }

  Future<void> deleteUser(int key) async {
    await _userBox.delete(key);
  }
}
