import 'package:anime_app/app/pages/splash/splash_page.dart';
import 'package:anime_app/app/routes/routes_generator.dart';
import 'package:flutter/material.dart';

class AnimeApp extends StatefulWidget {
  const AnimeApp({Key? key}) : super(key: key);

  @override
  State<AnimeApp> createState() => _AnimeAppState();
}

class _AnimeAppState extends State<AnimeApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RoutesConstants.initial,
      onGenerateRoute: RoutesGenerator.generateRoutes,
    );
  }
}