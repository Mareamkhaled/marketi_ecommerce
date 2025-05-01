import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../core/Routing/routes.dart';
import '../../../../core/helpers/auth_text_controllers.dart';
import '../../../../core/resources/app_images.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../../core/widgets/custom_button.dart';
import '../../../../core/widgets/my_text_form_field.dart';
import '../cubit/forget_password_cubit.dart';
import '../widgets/forget_body.dart';

class ForgetPasswordWithEmail extends StatelessWidget {
  const ForgetPasswordWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ForgetPasswordCubit, ForgetPasswordState>(
      listener: (context, state) {
        if (state is CodeSentState && context.mounted) {
          Navigator.pushNamed(
            context,
            Routes.vertificationWithEmail,
          );
        } else if (state is CodesentFailedState) {
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
          appBar: const CustomAppBar(title: "Forget Password"),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                spacing: 20,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const ForgetBody(
                    image: Assets.assetsForgetWithEmail,
                    text:
                        "Please enter your email address to receive a verification code",
                  ),
                  MyTextFormField(
                    controller:
                        AuthTextControllers.forgetPasswordWithEmailController,
                    prefixIcon: const Icon(Icons.email),
                    text: "Email",
                  ),
                  state is CodeSendingState
                      ? const CircularProgressIndicator()
                      : CustomButton.primary(
                          text: "Send Code",
                          onPressed: () {
                            context
                                .read<ForgetPasswordCubit>()
                                .sendForgetPasswordCode()
                                ;
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
