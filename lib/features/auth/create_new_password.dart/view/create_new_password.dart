import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/Routing/routes.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_style.dart';
import '../../forget_password/cubit/forget_password_cubit.dart';
import '../widgets/new_password_form.dart';

class CreateNewPassword extends StatelessWidget {
  const CreateNewPassword({super.key, required this.email});
  final String email;
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is CreateNewPasswordSuccess) {
          Navigator.pushNamed(context, Routes.congratulationScreen);
        } else if (state is CreateNewPasswordFailed) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                state.message,
              ),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppBar(title: "Create New Password"),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
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
                  const NewPasswordForm(),
                  state is CreateNewPasswordLoading
                      ? const CircularProgressIndicator()
                      : CustomButton.primary(
                          text: "Save",
                          onPressed: () {
                            context
                                .read<ForgetPasswordCubit>()
                                .createNewPassword(email);
                          },
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
