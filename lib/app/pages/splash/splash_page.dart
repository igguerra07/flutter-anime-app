import 'package:anime_app/app/core/di/injector.dart';
import 'package:anime_app/app/pages/splash/splash_cubit.dart';
import 'package:anime_app/app/routes/routes_generator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashPage extends StatelessWidget {
  final SplashCubit _splashCubit = getIt();
  
  SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<SplashCubit, bool>(
        bloc: _splashCubit..keepSplashScreen(),
        listenWhen: (_, current) => current,
        listener: (context, state) =>
            Navigator.of(context).pushReplacementNamed(RoutesConstants.home),
        child: SafeArea(
          child: Container(
            color: Colors.deepPurpleAccent.shade200,
          ),
        ),
      ),
    );
  }
}
