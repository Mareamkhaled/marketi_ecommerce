import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/features/auth/login/ui/views/login_screen.dart';
import 'package:marketi_ecommerce/features/auth/signup/ui/views/signup_screen.dart';
import 'package:marketi_ecommerce/features/onboarding/ui/screens/onboarding_screen.dart';
import 'package:marketi_ecommerce/features/splash/ui/screens/splash_screen.dart';
import 'package:marketi_ecommerce/test_screen.dart';
import 'routes.dart';

class Routing {
  Routing();
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routes.test:
        return MaterialPageRoute(builder: (context) => TestScreen());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => LoginScreen());
      case Routes.signup:
        return MaterialPageRoute(builder: (context) => SignupScreen());

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
