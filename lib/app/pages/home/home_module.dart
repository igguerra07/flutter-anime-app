import 'package:anime_app/app/core/di/injector.dart';
import 'package:anime_app/app/pages/home/cubit/home_cubit.dart';
import 'package:injectable/injectable.dart';

@module
abstract class HomeModule {
  @injectable
  HomeCubit get cubit => HomeCubit(animeRepository: getIt());
}
