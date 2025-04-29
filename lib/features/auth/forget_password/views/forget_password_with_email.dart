import 'package:flutter/material.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/Routing/routes.dart';
import '../widgets/forget_body.dart';


class ForgetPasswordWithEmail extends StatelessWidget {
  const ForgetPasswordWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return ForgetBody(
      onPressed: () => Navigator.pushNamed(context, Routes.vertificationWithEmail),
      image: Assets.assetsForgetWithEmail,
      text: "Please enter your email address to receive a verification code",
      textForm: "Email",
      isVisible: false,
      icon: const Icon(Icons.email),
    );
  }
}
