import 'package:injectable/injectable.dart';

import '../models/user.dart';

@injectable
class AuthLocalDatasource {
  User? getCurrentUser() {
    //chamada database or flutter secure storage
    return null;
  }
}
