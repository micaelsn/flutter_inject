import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

final getIt = GetIt.I;
// void configureDependences() {
//   debugPrint("Inicio da injeção de dependências");
//   // GetIt.I.registerSingleton(() => Dio());
//   // GetIt.I.registerFactory(() => AuthLocalDatasource());
//   // GetIt.I.registerFactory(() => AuthRemoteDatasource(GetIt.I()));
//   // GetIt.I.registerFactory(() => AuthRepository(GetIt.I(), GetIt.I()));
//   // GetIt.I.registerSingleton(SessionManager(GetIt.I()));

//   // GetIt.I.registerLazySingleton(() => SessionManager());

//   debugPrint("Fim da injeção de dependências");
// }
@InjectableInit()
void configureDependences() => $initGetIt(getIt);
