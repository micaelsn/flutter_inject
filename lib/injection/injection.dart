import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_inject/datasources/auth_local_datasource.dart';
import 'package:flutter_inject/datasources/auth_remote_datasource.dart';
import 'package:flutter_inject/mensagens/session_manager.dart';
import 'package:flutter_inject/repositories/auth_repository.dart';
import 'package:get_it/get_it.dart';

void configureDependences() {
  debugPrint("Inicio da injeção de dependências");
  GetIt.I.registerSingleton(() => Dio());
  GetIt.I.registerFactory(() => AuthLocalDatasource());
  GetIt.I.registerFactory(() => AuthRemoteDatasource(GetIt.I()));
  GetIt.I.registerFactory(() => AuthRepository(GetIt.I(), GetIt.I()));
  GetIt.I.registerSingleton(SessionManager(GetIt.I()));

  // GetIt.I.registerLazySingleton(() => SessionManager());

  debugPrint("Fim da injeção de dependências");
}
