import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    final arguments = settings.arguments;
    switch (settings.name) {
      // case Routes.login:
      //   return MaterialPageRoute(builder: (_) => const LoginView());
      // case Routes.register:
      //   return MaterialPageRoute(builder: (_) => const RegisterView());
      // case Routes.home:
      //   return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
