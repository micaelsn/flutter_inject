import 'package:flutter_inject/models/user.dart';
import 'package:flutter_inject/repositories/auth_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class SessionManager {
  SessionManager(this.authRepository) {
    print('Construcao do session management');
    _getCurrentUser();
  }

  final AuthRepository authRepository;

  User? user;

  void _getCurrentUser() {
    user = authRepository.getCurrentUser();
  }
}
