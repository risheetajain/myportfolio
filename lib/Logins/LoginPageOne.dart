import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

class LoginPageOne extends StatefulWidget {
  @override
  _LoginPageOneState createState() => _LoginPageOneState();
}

class _LoginPageOneState extends State<LoginPageOne> {
  Duration get loginTime => Duration(milliseconds: 2250);
  Map users = {'name': '', 'password': ''};

  Future<String> _authUser(LoginData data) {
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(data.name)) {
        return 'Username not exists';
      }
      if (users[data.name] != data.password) {
        return 'Password does not match';
      }
      return null;
    });
  }

  Future<String> _recoverPassword(String name) {
    print('Name: $name');
    return Future.delayed(loginTime).then((_) {
      if (!users.containsKey(name)) {
        return 'Username not exists';
      }
      return null;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FlutterLogin(
      title: 'Login Page',
      onSignup: _authUser,
      onLogin: _authUser,
      onRecoverPassword: _recoverPassword,
      // logo:'assets/Logos/logo.png',
      // logoTag: 'Magical Solutions',
    );
  }
}
