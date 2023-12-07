// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      name: json['name'] as String,
      salary: (json['salary'] as num).toDouble(),
      department: json['department'] as String,
      id: json['id'] as int,
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'salary': instance.salary,
      'department': instance.department,
      'id': instance.id,
    };
