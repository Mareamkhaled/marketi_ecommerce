import 'package:flutter/material.dart';
import '../../../../core/Routing/routes.dart';
import '../../../../core/resources/app_images.dart';
import '../widgets/vertification_code_body.dart';

class VertificationCodeWithEmail extends StatelessWidget {
  const VertificationCodeWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return VertificationCodeBody(
      onPressed: () => Navigator.pushNamed(context, Routes.createNewPassword),
      image: Assets.assetsVertificationWithEmail,
      text: "toji@example.com",
    );
  }
}
