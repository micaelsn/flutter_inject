import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../models/user.dart';

@injectable
class AuthRemoteDatasource {
  AuthRemoteDatasource();

  User? getCurrentUser() {
    //chamada na api
    return User('Micael Nascimento');
  }
}
