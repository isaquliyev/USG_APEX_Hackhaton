import 'package:flutter/material.dart';
import 'package:mobile_app/Bussiness%20Logic/LandingPage%20Bloc/landing_page_bloc.dart';
import 'package:mobile_app/Presentation/Screens/illness_detail_page.dart';
import 'package:mobile_app/Presentation/Screens/landing_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  final LandingPageBloc landingPageBloc = LandingPageBloc();

  Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider<LandingPageBloc>.value(
            value: landingPageBloc,
            child: const LandingPage(),
          ),
        );

      case '/IllnessDetail':
        return MaterialPageRoute(
          builder: (_) => IllnessDetailPage()
        );

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Error!'),
        ),
        body: const Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}