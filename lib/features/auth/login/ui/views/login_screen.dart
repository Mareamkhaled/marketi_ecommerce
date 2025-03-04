import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:marketi_ecommerce/core/Routing/routes.dart';
import 'package:marketi_ecommerce/features/auth/login/ui/widgets/login_form.dart';
import '../../../../../core/helpers/get_font_size.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/app_images.dart';
import '../../../../../core/resources/app_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../widgets/forget_password.dart';
import '../widgets/log_in_options.dart';
import '../widgets/sign_up_option.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton(
          onPressed: () {Navigator.pushNamed(context, Routes.signup);},
          child: Text(
            "Skip",
            style: AppStyles.regular.copyWith(
              color: AppColors.primaryColor,
              fontSize: getFontSize(context, 10),
            ),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(
              Assets.assetsImagesLogoPng,
              height: 200.h,
            ),
            LogInForm(
              formKey: _formKey,
              emailController: _emailController,
              passwordController: _passwordController,
            ),
            Gap(5.h),
            ForgetPassword(),
            Gap(10.h),
            CustomButton.primary(
              text: "Log In",
              onPressed: () {
                if (_formKey.currentState!.validate()) {}
              },
            ),
            Gap(10.h),
            LogInOptions(),
            Gap(5.h),
            SignUpOption()
          ],
        ),
      ),
    );
  }
}
