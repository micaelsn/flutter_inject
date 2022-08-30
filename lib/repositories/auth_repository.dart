import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/user.dart';

class AuthRepository {
  final AuthRemoteDatasource remoteDatasource;
  final AuthLocalDatasource localDatasource;

  AuthRepository(this.remoteDatasource, this.localDatasource);

  User? getCurrentUser() {
    var user = localDatasource.getCurrentUser();
    user ??= remoteDatasource.getCurrentUser();
    return user;
  }
}
