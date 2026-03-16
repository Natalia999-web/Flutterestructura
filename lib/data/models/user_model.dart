import 'package:arquitectura/domain/enties/user_entity.dart';

import '/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  UserModel({
    super.id,
    required super.name,
    required super.email,
    required super.age,
  });
  factory UserModel.from(Map<String, dynamic> json) => UserModel(
    id: json['_id'] ?? json['id'],
    name: json['name'],
    email: json['email'],
    age: json['age'],
  );

  Map<String, dynamic> toJson() => {"name": name, "email": email, "age": age};
}
