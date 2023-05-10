import 'package:flutter/material.dart';

@immutable
abstract class LoginState {
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

extension LoginStateUnion on LoginState {
  T map<T>({
    required T Function(IntialLoginState) intialLoginState,
    required T Function(LoggedInState) loggedInState,
    required T Function(LoginErrorState) loginErrorState,
  }) {
    if (this is IntialLoginState) {
      return intialLoginState(this as IntialLoginState);
    }
    if (this is LoggedInState) {
      return loggedInState(this as LoggedInState);
    }
    if (this is LoginErrorState) {
      return loginErrorState(this as LoginErrorState);
    }
    throw AssertionError('Union does not match any possible values');
  }
}
