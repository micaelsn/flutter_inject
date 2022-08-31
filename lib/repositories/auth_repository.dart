import 'package:injectable/injectable.dart';

import '../datasources/auth_local_datasource.dart';
import '../datasources/auth_remote_datasource.dart';
import '../models/user.dart';

abstract class IAuthRepository {
  User? getCurrentUser();
}

@Injectable(as: IAuthRepository)
class AuthRepository implements IAuthRepository {
  final AuthRemoteDatasource remoteDatasource;
  final AuthLocalDatasource localDatasource;

  AuthRepository(this.remoteDatasource, this.localDatasource);

  User? getCurrentUser() {
    var user = localDatasource.getCurrentUser();
    user ??= remoteDatasource.getCurrentUser();
    return user;
  }
}
