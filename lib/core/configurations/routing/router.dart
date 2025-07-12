import 'package:docdoc/core/configurations/routing/routes.dart';
import 'package:docdoc/features/authentication/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class DocDocRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      default:
        return MaterialPageRoute(
          settings: settings,
          builder: (_) {
            return Scaffold(
              appBar: AppBar(title: Text('Page Not Found')),
              body: Center(
                child: Text(
                  'No route defined for ${settings.name}',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            );
          },
        );
    }
  }
}
