import 'package:arquitectura/domain/enties/user_entity.dart';

import '/domain/entities/user_entity.dart';

abstract class UserReposotory {
  Future<List<UserEntity>> getUsers();
  Future<void> updateUser

}
