import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<bool> {
  SplashCubit() : super(false);

  Future<void> keepSplashScreen() async {
    const keepTime = Duration(seconds: 1);
    await Future.delayed(keepTime).then((_) => emit(true));
  }
}
