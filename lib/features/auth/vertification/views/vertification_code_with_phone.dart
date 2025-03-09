import 'package:flutter/material.dart';
import '../../../../core/Routing/routes.dart';
import '../../../../core/resources/app_images.dart';
import '../widgets/vertification_code_body.dart';

class VertificationCodeWithPhone extends StatelessWidget {
  const VertificationCodeWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return VertificationCodeBody(
      onPressed: () => Navigator.pushNamed(context, Routes.createNewPassword),
      image: Assets.assetsVertificationWithPhone,
      text: "+20 1012345678",
    );
  }
}
