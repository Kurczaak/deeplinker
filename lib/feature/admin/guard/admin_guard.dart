import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/feature/admin/bloc/admin_bloc.dart';
import 'package:deeplinker/router/router.gr.dart';

class AdminBlocGuard extends AutoRouteGuard {
  final AdminBloc authBloc;

  AdminBlocGuard({required this.authBloc});

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (authBloc.state is Authenticated) {
      resolver.next(true);
    } else {
      resolver.redirect(const BooksShellRoute());
    }
  }
}
