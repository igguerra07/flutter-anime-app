import 'package:anime_app/app/pages/splash/splash_cubit.dart';
import 'package:injectable/injectable.dart';

@module
abstract class SplashModule {
  @injectable
  SplashCubit get cubit => SplashCubit();
}
