import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/feature/auth/bloc/auth_bloc.dart';
import 'package:deeplinker/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final AuthBloc authBloc;

  AppRouter(this.authBloc);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: LoginRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: DashboardRoute.page,
          children: [
            bookRoutes,
            authorRoutes,
            profileRoutes,
          ],
        ),
      ];

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple(
      (resolver, router) {
        if (authBloc.state is Authenticated ||
            resolver.routeName == LoginRoute.name) {
          // we continue navigation
          resolver.next();
        } else {
          // else we navigate to the Login page so we get authenticated

          // tip: use resolver.redirect to have the redirected route
          // automatically removed from the stack when the resolver is completed
          resolver.redirect(const LoginRoute());
        }
      },
    ),
    // add more guards here
  ];

  AutoRoute get bookRoutes => AutoRoute(
        page: BooksShellRoute.page,
        children: [
          AutoRoute(
            initial: true,
            page: BooksListRoute.page,
          ),
          AutoRoute(
            page: BookDetailsRoute.page,
          ),
          AutoRoute(
            page: AuthorDetailsRoute.page,
          ),
        ],
      );

  AutoRoute get authorRoutes => AutoRoute(
        page: AuthorsShellRoute.page,
        children: [
          AutoRoute(
            initial: true,
            page: AuthorsListRoute.page,
          ),
          AutoRoute(
            page: AuthorDetailsRoute.page,
          ),
        ],
      );

  AutoRoute get profileRoutes => AutoRoute(
        page: ProfileRoute.page,
      );
}
