import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:vercel_app/core/presentation/blocs/interenet_checker/internet_checker_bloc.dart';
import 'package:vercel_app/core/routes/route_builder.dart';
import 'package:vercel_app/layers/presentation/bootstrap/app_bloc/app_bloc.dart';
import 'package:vercel_app/utils/bloc_observer.dart';
import 'package:vercel_app/utils/dependencies_injection.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load(fileName: ".env");
    Bloc.observer = AppBlocObserver();
    await serviceLocator();
    return SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
        DeviceOrientation.portraitDown,
      ],
    ).then((_) => runApp(const MyApp()));
  }, (error, stackTrace) async {});
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
      BlocProvider(create: (context) => sl<InternetCheckerBloc>(),),
      BlocProvider(create: (context) => sl<AppBloc>(),),
    ], 
    child: MaterialApp.router(
      title: 'Vercel',
      builder: (context, child) => ScrollConfiguration(
        behavior: NoOverScrollBehavior(), child: child ?? const Placeholder(),
      ),
      routerConfig: router,
      ),
    );
  }
}

class NoOverScrollBehavior extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
