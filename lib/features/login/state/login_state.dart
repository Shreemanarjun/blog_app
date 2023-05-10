import 'package:flutter/material.dart';

@immutable
sealed class LoginState {
  const LoginState();
}

class IntialLoginState extends LoginState {
  const IntialLoginState() : super();
}

class LoggedInState extends LoginState {
  const LoggedInState() : super();
}

class LoginErrorState extends LoginState {
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
