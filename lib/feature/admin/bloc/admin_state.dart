part of 'admin_bloc.dart';

@immutable
abstract class AdminState {}

class AdminInitial extends AdminState {}

class Authenticated extends AdminState {}

class Unauthenticated extends AdminState {}
