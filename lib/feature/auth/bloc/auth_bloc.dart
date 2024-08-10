import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc() : super(AuthInitial()) {
    on<Login>((event, emit) {
      emit(Authenticated());
    });

    on<Logout>((event, emit) {
      emit(Unauthenticated());
    });
  }
}
