import 'package:flutter/material.dart';
import '../../../onboarding/ui/screens/onboarding_screen.dart';
import '../widgets/splash_body.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2), () {
      Navigator.pushReplacement(
        // ignore: use_build_context_synchronously
        context,
        MaterialPageRoute(
            builder: (context) =>
                OnboardingScreen()), 
      );
    });

    return Scaffold(
      body: SplashBody(),
    );
  }
}
