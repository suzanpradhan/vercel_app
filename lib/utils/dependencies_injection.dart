import 'package:get_it/get_it.dart';
import 'package:vercel_app/core/api/api_client.dart';
import 'package:vercel_app/core/presentation/blocs/interenet_checker/internet_checker_bloc.dart';
import 'package:vercel_app/layers/presentation/bootstrap/app_bloc/app_bloc.dart';
import 'package:vercel_app/utils/secure_storage.dart';
import 'package:vercel_app/utils/services/dotenv_service.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  await _initDotEnv();
  await _initSecureStorage();
  sl.registerSingleton<ApiClient>(ApiClient());
  _dataSources();
  _repositories();
  _useCase();
  _blocs();
}

Future<void> _initSecureStorage() async {
  await SecureStorageMixin.initSecureStorage();
  sl.registerSingleton<SecureStorageMixin>(SecureStorageMixin());
}

Future<void> _initDotEnv() async {
  await EnvironmentService.init();
  sl.registerSingleton<EnvironmentService>(EnvironmentService());
}

void _dataSources() {}

void _repositories() {}

void _useCase() {}

void _blocs() {
  sl.registerFactory(() => InternetCheckerBloc());
  sl.registerFactory(() => AppBloc());
}