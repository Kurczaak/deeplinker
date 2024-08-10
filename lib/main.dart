import 'package:deeplinker/feature/auth/bloc/auth_bloc.dart';
import 'package:deeplinker/router/navigation_observer.dart';
import 'package:deeplinker/router/router.dart';
import 'package:deeplinker/router/router.gr.dart';
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
    _appRouter = AppRouter(context.read<AuthBloc>());
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        if (state is Authenticated) {
          _appRouter.popAndPush(const DashboardRoute());
        }
      },
      child: MaterialApp.router(
        routerConfig: _appRouter.config(
          navigatorObservers: () => [MyNavigationObserver()],
        ),
      ),
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
        BlocProvider(create: (_) => AuthBloc()..add(Init())),
      ],
      child: child,
    );
  }
}
