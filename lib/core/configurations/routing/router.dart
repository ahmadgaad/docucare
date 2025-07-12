import 'package:docdoc/core/configurations/routing/routes.dart';
import 'package:docdoc/features/authentication/presentation/screens/login_screen.dart';
import 'package:docdoc/features/authentication/presentation/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class DocDocRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.login:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => const LoginScreen(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.easeInOut;
            final tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
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
