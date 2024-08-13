import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/feature/admin/bloc/admin_bloc.dart';
import 'package:deeplinker/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  final AdminBloc adminBloc;

  AppRouter(this.adminBloc);

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardRoute.page,
          children: [
            bookRoutes,
            authorRoutes,
            profileRoutes,
          ],
        ),
        AutoRoute(
          path: '*',
          page: ErrorRoute.page,
        ),
      ];

  @override
  late final List<AutoRouteGuard> guards = [
    AutoRouteGuard.simple((resolver, router) {
      if (adminBloc.state is Authenticated ||
          resolver.routeName != AdminProfileRoute.name) {
        resolver.next();
      }
    }),
  ];

  AutoRoute get bookRoutes => AutoRoute(
        page: BooksShellRoute.page,
        children: [
          AutoRoute(
            initial: true,
            path: 'books',
            page: BooksListRoute.page,
          ),
          AutoRoute(
            page: BookDetailsRoute.page,
            path: 'books/:id',
          ),
          AutoRoute(
            path: 'authors/:id',
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
            path: 'authors',
          ),
          AutoRoute(
            page: AuthorDetailsRoute.page,
            path: 'authors/:id',
          ),
        ],
      );

  AutoRoute get profileRoutes =>
      AutoRoute(page: ProfileShellRoute.page, children: [
        AutoRoute(page: ProfileRoute.page, path: 'profile'),
        AutoRoute(page: AdminProfileRoute.page, path: 'admin'),
      ]);
}
