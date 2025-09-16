import 'package:flutter/material.dart';
import 'package:templatemoh/core/routing/routes.dart' show Routes;
import 'package:templatemoh/features/home/ui/login_screen.dart'
    show LoginScreen;
import 'package:templatemoh/features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());

      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route define for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
