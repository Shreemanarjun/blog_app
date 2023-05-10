import 'package:flutter/foundation.dart';

@immutable
sealed class LoginState {}

class IntialLoginState extends LoginState {}

class LoggedInState extends LoginState {}

class LoginErrorState extends LoginState {
  LoginErrorState({required this.error});
  final String error;
  @override
  String toString() => 'LoginErrorState(error: $error)';
}
