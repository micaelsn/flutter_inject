import 'package:dio/dio.dart';

import '../models/user.dart';

class AuthRemoteDatasource {
  final Dio dio;

  AuthRemoteDatasource(this.dio);

  User? getCurrentUser() {
    //chamada na api
    return User('Micael Nascimento');
  }
}
