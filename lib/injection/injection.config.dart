// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../datasources/auth_local_datasource.dart' as _i3;
import '../datasources/auth_remote_datasource.dart' as _i4;
import '../mensagens/session_manager.dart' as _i6;
import '../repositories/auth_repository.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.AuthLocalDatasource>(() => _i3.AuthLocalDatasource());
  gh.factory<_i4.AuthRemoteDatasource>(() => _i4.AuthRemoteDatasource());
  gh.factory<_i5.IAuthRepository>(() => _i5.AuthRepository(
      get<_i4.AuthRemoteDatasource>(), get<_i3.AuthLocalDatasource>()));
  gh.singleton<_i6.SessionManager>(
      _i6.SessionManager(get<_i5.IAuthRepository>()));
  return get;
}
