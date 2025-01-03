import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vercel_app/core/presentation/widgets/home_wrapper_widget.dart';
import 'package:vercel_app/core/routes/app_routes.dart';
import 'package:vercel_app/layers/presentation/bootstrap/screens/splash_screen.dart';
import 'package:vercel_app/layers/presentation/home/screens/home_screen.dart';

final _rootKey = GlobalKey<NavigatorState>();

final _homeShellNavigatorKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: _rootKey,
  initialLocation: SPLASH_ROUTE,
  routerNeglect: true,
  routes: [
    GoRoute(
      path: SPLASH_ROUTE,
      pageBuilder: (context, state) {
        return MaterialPage(key: state.pageKey, child: const SplashScreen());
      },
    ),
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomeWrapperWidget(navigationShell: navigationShell);
      },
      branches: [

        StatefulShellBranch
        (
          navigatorKey: _homeShellNavigatorKey,
          routes: [GoRoute(path: HOME_ROUTE, pageBuilder: (context, state){
          return NoTransitionPage(key: state.pageKey, child: const HomeScreen());
        },),],)
      ],),
  ],
);
