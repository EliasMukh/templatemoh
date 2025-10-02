import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:templatemoh/core/DI/dependency_injection.dart';
import 'package:templatemoh/core/routing/routes.dart' show Routes;
import 'package:templatemoh/features/home/ui/home_screen.dart';
import 'package:templatemoh/features/login/logic/cubit/login_cubit.dart';
import 'package:templatemoh/features/login/ui/login_screen.dart'
    show LoginScreen;
import 'package:templatemoh/features/onboarding/onboarding_screen.dart';
import 'package:templatemoh/features/signup/logic/sign_up_cubit.dart';
import 'package:templatemoh/features/signup/ui/sign_up_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());

      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: SignupScreen(),
              ),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: LoginScreen(),
              ),
        );
      case Routes.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());

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
