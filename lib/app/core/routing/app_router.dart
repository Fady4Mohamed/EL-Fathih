import 'package:el_fathih/app/core/routing/routes.dart';
import 'package:el_fathih/app/featuers/news/presentation/ui/views/article_view.dart';
import 'package:el_fathih/app/shared/navigatio_bar_view.dart';
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
      case Routes.navigatioBarView:
        return MaterialPageRoute(builder: (_) => const NavigatioBarView());
      case Routes.articleView:
        return MaterialPageRoute(builder: (_) => const ArticleView());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
