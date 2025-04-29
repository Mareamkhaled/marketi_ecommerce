import 'package:flutter/material.dart';
import '../../../../core/Routing/routes.dart';
import '../../../../core/resources/app_images.dart';
import '../widgets/forget_body.dart';

class ForgetPasswordWithPhone extends StatelessWidget {
  const ForgetPasswordWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return ForgetBody(
      onPressed: () => Navigator.pushNamed(context, Routes.vertificationWithPhone),
      image: Assets.assetsForgetWithPhone,
      text: "Please enter your phone number to receive a verification code",
      textForm: "Phone",
      isVisible: true,
      icon: const Icon(Icons.phone),
    );
  }
}
