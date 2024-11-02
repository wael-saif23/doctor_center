import 'package:doctor_center/core/routing/routes.dart';
import 'package:doctor_center/features/login/login_screen.dart';
import 'package:doctor_center/features/onbourding/onbourding_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBourdingScreen:
        return MaterialPageRoute(builder: (_) => const OnbourdingScreen());
          case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ));
    }
  }
}