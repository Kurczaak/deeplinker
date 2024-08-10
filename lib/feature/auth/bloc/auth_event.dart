part of 'auth_bloc.dart';

@immutable
abstract class AuthEvent {}

class Init extends AuthEvent {}

class Login extends AuthEvent {}

class Logout extends AuthEvent {}
