import 'package:arquitectura/data/models/user_model.dart';
import 'package:arquitectura/domain/enties/user_entity.dart';
import 'package:http/http.dart';

import '';
import '';

class UserRepositoryImp implements UserRepository {
  final String baseUrl = '';

  @override
  future<List<UserEntity>> getUsers() async {
    final response

  

  throw Exception("error al obtener usuarios")
}

@override
Future<void> createUser(UserEntity user) async{
  final model = UserModel(name: user.name, email: user.email, age: user.age);
  await http.post(Uri.parse(baseUrl),
  body:json.encode(model.toJson()),
  headers: {"Content-Type": "application/json"});
}


@override
Future<void> updateUser(UserEntity user) async{
  final model = UserModel(name: user.name, email: user.email, age: user.age);
  await http.post(Uri.parse("$baseUrl/${user.id}"),
  body:json.encode(model.toJson()),
  headers: {"Content-Type": "application/json"});
}

@override 
Future<void> deleteUser(String.id) async{
  await http.delete(Uri.parse("$baseUrl/$id"));
}
}
