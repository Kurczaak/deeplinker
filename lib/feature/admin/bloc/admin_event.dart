part of 'admin_bloc.dart';

@immutable
abstract class AdminEvent {}

class Authenticate extends AdminEvent {}

class Deauthenticate extends AdminEvent {}

class Init extends AdminEvent {}
