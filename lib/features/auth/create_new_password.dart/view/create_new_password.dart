import 'package:flutter/material.dart';
import 'package:marketi_ecommerce/core/Routing/routes.dart';
import 'package:marketi_ecommerce/core/resources/app_images.dart';
import 'package:marketi_ecommerce/core/widgets/custom_app_bar.dart';
import 'package:marketi_ecommerce/core/widgets/custom_button.dart';
import 'package:marketi_ecommerce/core/widgets/my_text_form_field.dart';

import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: "Create New Password"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Assets.assetsCreateNewPassword),
            Text(
              "New password must be different from last password",
              style: AppStyles.regular
                  .copyWith(fontSize: 16, color: AppColors.myBlack),
              textAlign: TextAlign.center,
            ),
            MyTextFormField(
              prefixIcon: Icon(Icons.lock),
              text: "Password",
            ),
            MyTextFormField(
              prefixIcon: Icon(Icons.lock),
              text: "Confirm Password",
            ),
            CustomButton.primary(
              text: "Save",
              onPressed:() => Navigator.pushNamed(context, Routes.congratulationScreen),
            ),
          ],
        ),
      ),
    );
  }
}
