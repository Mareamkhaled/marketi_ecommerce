import 'package:flutter/material.dart';
import '../../../../core/Routing/routes.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/my_text_form_field.dart';

class ForgetBody extends StatelessWidget {
  const ForgetBody(
      {super.key,
      required this.text,
      required this.textForm,
      required this.isVisible,
      required this.icon,
      required this.image,
      required this.onPressed});
  final String text;
  final String textForm;
  final bool isVisible;
  final Icon icon;
  final String image;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(title: "Forget Password"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          spacing: 20,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(image),
            Text(
              text,
              style: AppStyles.regular
                  .copyWith(color: AppColors.myBlack, fontSize: 16),
              textAlign: TextAlign.center,
            ),
            MyTextFormField(
              prefixIcon: icon,
              text: textForm,
            ),
            CustomButton.primary(
              text: "Send Code",
              onPressed: onPressed,
            ),
            Visibility(
              visible: isVisible,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    Routes.forgetWithEmail,
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
            )
          ],
        ),
      ),
    );
  }
}
