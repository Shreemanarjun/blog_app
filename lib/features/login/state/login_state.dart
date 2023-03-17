import 'package:flutter/material.dart';

@immutable
abstract class LoginState {}

class IntialLoginState extends LoginState {}

class LoggingInState extends LoginState {}

class LoggedInState extends LoginState {}

class LoginErrorState extends LoginState {
  LoginErrorState({required this.error});

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
    required T Function(LoggingInState) loggingInState,
    required T Function(LoggedInState) loggedInState,
    required T Function(LoginErrorState) loginErrorState,
  }) {
    if (this is IntialLoginState) {
      return intialLoginState(this as IntialLoginState);
    }
    if (this is LoggingInState) {
      return loggingInState(this as LoggingInState);
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
