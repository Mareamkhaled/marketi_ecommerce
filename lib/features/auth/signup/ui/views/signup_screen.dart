import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../OAuth/o_auth_options.dart';
import '../../logic/cubit/signup_cubit.dart';
import '../../../../../core/Routing/routes.dart';
import '../../../../../core/helpers/auth_text_controllers.dart';
import '../../../../../core/resources/app_images.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});
  @override
  //mariamahmousbah@gmail.com
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errorMessage),
              backgroundColor: Colors.red,
            ),
          );
        } else if (state is SignupSuccess) {
          Navigator.pushNamed(context, Routes.test);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () {
                Navigator.pop(context);
              },
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
                  const SignupForm(),
                  const Gap(15),
                  state is SignupLoading
                      ? const CircularProgressIndicator()
                      : CustomButton.primary(
                          text: "Sign up",
                          onPressed: () {
                            validateThensignup(context);
                          }),
                  const Gap(10),
                  const OauthOptions(),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  void validateThensignup(BuildContext context) {
    if (AuthTextControllers.signUpFormKey.currentState!.validate()) {
      context.read<SignupCubit>().signUp();
    }
  }
}
