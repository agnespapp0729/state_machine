abstract class UserRepository {
  List<Map<String, dynamic>>? getUsers();
  Future<List<Map<String, dynamic>>> createUser(Map<String, dynamic> newUser);
  Future<List<Map<String, dynamic>>> updateUser(
      int key, Map<String, dynamic> user);
  Future<List<Map<String, dynamic>>?>? deleteUser(int key);

  Stream get getUsersStream;
}
