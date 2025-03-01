import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/features/onboarding/ui/screens/onboarding_screen.dart';
import '../widgets/splash_body.dart';
 // import your onboarding screen

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to onboarding screen after 3 seconds
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(builder: (context) => OnboardingScreen()),  // replace with your onboarding screen
      );
    });

    return Scaffold(
      body: SplashBody(),
    );
  }
}
