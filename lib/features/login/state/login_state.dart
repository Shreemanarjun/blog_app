import 'package:flutter/material.dart';

@immutable
sealed class LoginState {
  const LoginState();
}

class IntialLoginState implements LoginState {
  const IntialLoginState() : super();
}

class LoggedInState implements LoginState {
  const LoggedInState() : super();
}

class LoginErrorState implements LoginState {
  const LoginErrorState({required this.error});

  final String error;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is LoginErrorState && other.error == error;
  }

  @override
  int get hashCode => error.hashCode;

  @override
  String toString() => 'LoginErrorState(error: $error)';
}
