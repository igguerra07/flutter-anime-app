import 'package:anime_app/app/pages/details/details_page.dart';
import 'package:anime_app/app/pages/home/home_page.dart';
import 'package:anime_app/app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

class RoutesConstants {
  static const initial = "/";
  static const splash = "/splash";
  static const home = "/home";
  static const details = "/details";
}

class RoutesGenerator {
  static Map<String, dynamic> getRoutes(RouteSettings setting) => {
        RoutesConstants.initial: (context) => SplashPage(),
        RoutesConstants.home: (context) => HomePage(),
        RoutesConstants.details: (context) => const DetailsPage(),
      };

  static Route<dynamic>? generateRoutes(RouteSettings settings) {
    final routes = RoutesGenerator.getRoutes(settings);
    final WidgetBuilder? builder = routes[settings.name];
    if (builder != null) {
      return PageRouteBuilder(
        pageBuilder: (context, _, __) => builder(context),
      );
    }
    return null;
  }
}
