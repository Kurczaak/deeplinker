import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardRoute.page,
          children: [bookRoutes, authorRoutes],
        ),
      ];

  AutoRoute get bookRoutes =>
      AutoRoute(initial: true, page: BooksShellRoute.page, children: [
        AutoRoute(
          initial: true,
          page: BooksListRoute.page,
        ),
        AutoRoute(
          page: BookDetailsRoute.page,
        ),
      ]);

  AutoRoute get authorRoutes =>
      AutoRoute(page: AuthorsShellRoute.page, children: [
        AutoRoute(
          initial: true,
          page: AuthorsListRoute.page,
        ),
        AutoRoute(
          page: AuthorDetailsRoute.page,
        ),
      ]);
}
