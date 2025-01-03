import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:shimmer/shimmer.dart';
import 'package:vercel_app/core/constants/app_colors.dart';
import 'package:vercel_app/core/routes/app_routes.dart';
import 'package:vercel_app/layers/presentation/bootstrap/app_bloc/app_bloc.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider.value(value: 
        context.read<AppBloc>()..add(const AppEvent.checkAuthetication()),),
        ],
      child: MultiBlocListener(
        listeners: [
          BlocListener<AppBloc, AppState> (
          listener: (context, state) {
            state.mapOrNull(
              unAuthenticated: (value) {
                context.go(HOME_ROUTE);
              },
              authenticated: (value) {
                context.go(HOME_ROUTE);
              },
            );
          },
      ),
        ],
      
        child: Scaffold(
          backgroundColor: AppColors.black,
          body: Center(
            child: Shimmer.fromColors(
              direction: ShimmerDirection.rtl,
              highlightColor: AppColors.red,
              baseColor: AppColors.grayDark,
              child: const Text("LOGO"),
            ),
          ),
        ),
      ),
    );
  }
}
