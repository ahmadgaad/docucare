import 'package:docdoc/core/configurations/routing/routes.dart';
import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/features/authentication/presentation/controller/auth_controller.dart';
import 'package:docdoc/features/authentication/presentation/screens/login_screen.dart';
import 'package:docdoc/features/authentication/presentation/screens/onboarding_screen.dart';
import 'package:docdoc/features/authentication/presentation/screens/register_screen.dart';
import 'package:docdoc/features/home/presentation/screens/home_screen.dart';
import 'package:docdoc/features/home/presentation/screens/layout_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DocDocRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.layout:
        return MaterialPageRoute(builder: (_) => const LayoutScreen());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (_) => OnboardingScreen());
      case Routes.register:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => sl<AuthController>(),
            child: RegisterScreen(),
          ),
        );
      case Routes.login:
        return PageRouteBuilder(
          pageBuilder: (_, __, ___) => BlocProvider(
            create: (context) => sl<AuthController>(),
            child: const LoginScreen(),
          ),
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
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
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
