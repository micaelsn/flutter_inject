import 'package:flutter/material.dart';
import 'package:flutter_inject/models/user.dart';
import 'package:flutter_inject/pages/home_page.dart';
import 'package:get_it/get_it.dart';

import '../mensagens/session_manager.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var sessionManager = GetIt.I.get<SessionManager>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Center(
        child: ElevatedButton(
          child: Text('Login'),
          onPressed: () {
            sessionManager.user = User('Daniel');
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) =>
                    const MyHomePage(title: 'Flutter Demo Home Page')));
          },
        ),
      ),
    );
  }
}
