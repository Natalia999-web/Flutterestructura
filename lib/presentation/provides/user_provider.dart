import 'package:arquitectura/domain/enties/user_entity.dart';
import 'package:arquitectura/presentation/provides/user_reposotory.dart';
import 'package:flutter/material.dart';
import '/domain/entities/user_entity.dart';
import '/domain/repositories/user_repository.dart';

class UserProvider extends ChangeNotifier {
  final UserReposotory repository;
  UserProvider(this.repository);

  List<UserEntity> users = [];
  bool isLoading = false;

  Future<void> loadUsers() async {
    isLoading = true;
    notifyListeners();
    try {
      users = await repository.getUsers();
    } catch (e) {
      debugPrint(e.toString());
    }
    isLoading = false;
    notifyListeners();
  }
}
