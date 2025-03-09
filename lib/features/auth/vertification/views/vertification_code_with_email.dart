import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/core/Routing/routes.dart';
import 'package:marketi_ecommerce/core/resources/app_images.dart';
import 'package:marketi_ecommerce/features/auth/vertification/widgets/vertification_code_body.dart';

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
