import 'package:flutter/material.dart';
import '../../../../core/Routing/routes.dart';
import '../../../../core/helpers/auth_text_controllers.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_style.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/my_text_form_field.dart';
import '../widgets/forget_body.dart';

class ForgetPasswordWithPhone extends StatelessWidget {
  const ForgetPasswordWithPhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: const CustomAppBar(title: "Forget Password"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ForgetBody(
                image: Assets.assetsForgetWithPhone,
                text:
                    "Please enter your phone number to receive a verification code",
              ),
              MyTextFormField(
                controller:
                    AuthTextControllers.forgetPasswordWithEmailController,
                prefixIcon: const Icon(Icons.phone),
                text: "phone number",
              ),
              CustomButton.primary(
                text: "Send Code",
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.vertificationWithPhone,
                  );
                },
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.forgetPasswordWithEmail,
                  );
                },
                child: Text(
                  "Try another way",
                  style: AppStyles.regular.copyWith(
                    color: AppColors.primaryColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
