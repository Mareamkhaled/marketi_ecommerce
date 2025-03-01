import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:marketi_ecommerce/features/splash/ui/screens/splash_screen.dart';
import 'routes.dart';

class Routing {
  Routing();
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());

      default:
        return MaterialPageRoute(builder: (_) => NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("No Route Found"),
    ));
  }
}
