import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/Routing/routes.dart';
import '../../../../core/helpers/auth_text_controllers.dart';
import '../../../../core/resources/app_colors.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/resources/app_style.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../forget_password/cubit/forget_password_cubit.dart';
import '../widgets/image_and_text.dart';
import '../widgets/my_pin_code.dart';
import '../widgets/time_and_reset.dart';

class VertificationCodeWithEmail extends StatelessWidget {
  const VertificationCodeWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is CodeActivated && context.mounted) {
          Navigator.pushNamed(
            context,
            Routes.createNewPassword,
          );
        } else if (state is CodeActivationFailed) {
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
          appBar: const CustomAppBar(title: "Verification code"),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              spacing: 20,
              children: [
                const ImageAndText(image: Assets.assetsVertificationWithEmail),
                Text(AuthTextControllers.forgetPasswordWithEmailController.text,style: AppStyles.regular
                        .copyWith(fontSize: 16, color: AppColors.myGrey)),
                MyPinCode(
                  controller: AuthTextControllers.pinCodeController,
                ),
                state is ActivatingCode
                    ? const CircularProgressIndicator()
                    : CustomButton.primary(
                        text: "Verify code",
                        onPressed: () {
                          context
                              .read<ForgetPasswordCubit>()
                              .vertificationCodeWithEmail();
                        },
                      ),
                const TimeAndReset()
              ],
            ),
          ),
        );
      },
    );
  }
}
