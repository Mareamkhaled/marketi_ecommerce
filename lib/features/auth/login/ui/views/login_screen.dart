import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';

import '../../../../../core/Routing/routes.dart';
import '../../../../../core/helpers/auth_text_controllers.dart';
import '../../../../../core/helpers/get_font_size.dart';
import '../../../../../core/resources/app_colors.dart';
import '../../../../../core/resources/app_images.dart';
import '../../../../../core/resources/app_style.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../OAuth/o_auth_options.dart';
import '../../logic/cubit/login_cubit.dart';
import '../widgets/forget_password.dart';
import '../widgets/login_form.dart';
import '../widgets/sign_up_option.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSucces) {
          Navigator.pushReplacementNamed(context, Routes.test);
        } else if (state is LoginFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.errorMessage,
              ),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: TextButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, Routes.signup);
              },
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
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    Assets.assetsImagesLogoPng,
                    height: 200.h,
                  ),
                  const LogInForm(),
                  Gap(5.h),
                  const ForgetPassword(),
                  Gap(10.h),
                  state is Loginloading
                      ? const CircularProgressIndicator()
                      : CustomButton.primary(
                          text: "Log In",
                          onPressed: () {
                            validateThenLogin(context);
                          },
                        ),
                  Gap(10.h),
                  const OauthOptions(),
                  const SignUpOption(),
                  Gap(50.h)
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void validateThenLogin(BuildContext context) {
    if (AuthTextControllers.loginFormKey.currentState!.validate()) {
      context.read<LoginCubit>().signin();
      AuthTextControllers.loginEmailController.clear();
      AuthTextControllers.loginPasswordController.clear();
    }
  }
}
