import 'package:flutter/material.dart';
import '../../../../core/Routing/routes.dart';
import '../../../onboarding/ui/screens/onboarding_screen.dart';
import '../widgets/splash_body.dart';
import 'package:animate_do/animate_do.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FadeIn(
      animate: true,
      duration: const Duration(seconds: 3),
      child: SplashBody(),
      onFinish: (direction) =>
          Navigator.pushReplacementNamed(context, Routes.onboarding),
    ));
  }
}
