abstract class UserRepository {
  List<Map<String, dynamic>> getUsers();
  Future<void> createUser(Map<String, dynamic> newUser);
  Future<void> updateUser(int key, Map<String, dynamic> user);
  Future<void> deleteUser(int key);
}
