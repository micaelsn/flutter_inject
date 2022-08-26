import 'package:flutter/foundation.dart';
import 'package:flutter_inject/mensagens/session_manager.dart';
import 'package:get_it/get_it.dart';

void configureDependences() {
  debugPrint("Inicio da injeção de dependências");
  var sessionManager = SessionManager();
  print(sessionManager.hashCode);
  GetIt.I.registerSingleton(sessionManager);
  debugPrint("Fim da injeção de dependências");
}
