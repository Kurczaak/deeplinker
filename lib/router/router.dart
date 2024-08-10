import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/router/router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          initial: true,
          page: DashboardRoute.page,
          children: [
            AutoRoute(initial: true, page: BookListShellRoute.page, children: [
              AutoRoute(
                initial: true,
                page: BooksListRoute.page,
              ),
              AutoRoute(
                page: BookDetailsRoute.page,
              ),
            ]),
          ],
        ),
      ];
}
