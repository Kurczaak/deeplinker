import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'admin_event.dart';
part 'admin_state.dart';

class AdminBloc extends Bloc<AdminEvent, AdminState> {
  AdminBloc() : super(AdminInitial()) {
    on<Authenticate>((event, emit) {
      emit(Authenticated());
    });

    on<Deauthenticate>((event, emit) {
      emit(Unauthenticated());
    });

    on<Init>((event, emit) {
      authTimer?.cancel();
      authTimer = Timer.periodic(const Duration(seconds: 60), (_) {
        add(Deauthenticate());
      });
    });
  }
  Timer? authTimer;
}
