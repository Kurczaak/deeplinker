import 'package:auto_route/auto_route.dart';
import 'package:deeplinker/feature/admin/bloc/admin_bloc.dart';
import 'package:deeplinker/router/navigation_observer.dart';
import 'package:deeplinker/router/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GlobalBlocProvider(
      child: MaterialAppRouter(),
    );
  }
}

class MaterialAppRouter extends StatefulWidget {
  const MaterialAppRouter({super.key});

  @override
  State<MaterialAppRouter> createState() => _MaterialAppRouterState();
}

class _MaterialAppRouterState extends State<MaterialAppRouter> {
  late AppRouter _appRouter;

  @override
  void initState() {
    super.initState();
    _appRouter = AppRouter(context.read<AdminBloc>());
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(
          navigatorObservers: () => [MyNavigationObserver()],
          deepLinkBuilder: (deepLink) {
            if (deepLink.uri.fragment == '/' || deepLink.uri.fragment.isEmpty) {
              return DeepLink.defaultPath;
            }
            return DeepLink.path(deepLink.uri.fragment);
            return const DeepLink.path('/authors-shell-route/authors/2');
            if (deepLink.path.startsWith('/products')) {
              // continue with the platform link
              return deepLink;
            } else {
              return DeepLink.defaultPath;
              // or DeepLink.path('/')
              // or DeepLink([HomeRoute()])
            }
          }),
    );
  }
}

class GlobalBlocProvider extends StatelessWidget {
  const GlobalBlocProvider({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => AdminBloc()..add(Init())),
      ],
      child: child,
    );
  }
}
