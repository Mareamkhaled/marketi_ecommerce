import 'package:flutter/material.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/widgets/custom_button.dart';

import '../../../../core/Routing/routes.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.assetsCongratulation),
            Text(
              "You have updated the password. please login again with your latest password",
              style: AppStyles.regular
                  .copyWith(color: AppColors.myBlack, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            CustomButton.primary(
              text: "Login",
              onPressed: () =>
                  Navigator.pushNamed(context, Routes.login),
            )
          ],
        ),
      ),
    );
  }
}
