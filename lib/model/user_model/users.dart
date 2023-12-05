import 'package:hive/hive.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users.g.dart';

@freezed
@HiveType(typeId: 1)
class Users {
  Users({required this.name, required this.age});
  @HiveField(0)
  String name;

  @HiveField(1)
  int age;
}
