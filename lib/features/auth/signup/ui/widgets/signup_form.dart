import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/helpers/auth_text_controllers.dart';
import '../../../../../core/helpers/form_validator.dart';
import '../../../../../core/widgets/my_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm({
    super.key,
  });

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObsecure = true;
  bool isObsecureTwo = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: AuthTextControllers.signUpFormKey,
        child: Column(children: [
          MyTextFormField(
              validator: FormValidator.validateName,
              controller: AuthTextControllers.signUpNameController,
              text: "Your Name",
              hintText: "full name",
              prefixIcon: const Icon(Icons.person_2_outlined)),
          Gap(5.h),
          const MyTextFormField(
              text: "Username",
              hintText: "Username",
              prefixIcon: Icon(Icons.person)),
          Gap(5.h),
          MyTextFormField(
            validator: FormValidator.validatePhoneNumber,
            controller: AuthTextControllers.signUpPhoneController,
            text: "phone number",
            hintText: "",
            prefixIcon: const Icon(Icons.mobile_friendly),
            keyboardType: TextInputType.phone,
          ),
          Gap(5.h),
          MyTextFormField(
              validator: FormValidator.validateEmail,
              controller: AuthTextControllers.signUpEmailController,
              text: "email",
              hintText: "You@gmail.com",
              prefixIcon: const Icon(Icons.email_outlined)),
          Gap(5.h),
          MyTextFormField(
            validator: FormValidator.validatePassword,
            controller: AuthTextControllers.signUpPasswordController,
            text: "password",
            hintText: "enter ur password",
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObsecure = !isObsecure;
                });
              },
              icon: isObsecure
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
            isObscureText: isObsecure,
          ),
          Gap(5.h),
          MyTextFormField(
            validator: (value) => FormValidator.confirmPassword(
                AuthTextControllers.signUpPasswordController.text, value),
            controller: AuthTextControllers.signUpConfirmPasswordController,
            text: "confirm password",
            hintText: "re_enter ur password",
            prefixIcon: const Icon(Icons.lock),
            suffixIcon: IconButton(
              onPressed: () {
                setState(() {
                  isObsecureTwo = !isObsecureTwo;
                });
              },
              icon: isObsecureTwo
                  ? const Icon(Icons.visibility_off)
                  : const Icon(Icons.visibility),
            ),
            isObscureText: isObsecureTwo,
          )
        ]));
  }
}
