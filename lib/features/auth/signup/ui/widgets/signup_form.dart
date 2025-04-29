import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/helpers/form_validator.dart';
import '../../../../../core/widgets/my_text_form_field.dart';

class SignupForm extends StatefulWidget {
  const SignupForm(
      {super.key,
      required this.formKey,
      required this.emailController,
      required this.passwordController,
      required this.nameController,
      required this.phoneController,
      required this.confirmPasswordController});

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final TextEditingController nameController;
  final TextEditingController phoneController;

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  bool isObsecure = true;
  bool isObsecureTwo = true;

  @override
  Widget build(BuildContext context) {
    return Form(
        key: widget.formKey,
        child: Column(children: [
          MyTextFormField(
              validator: FormValidator.validateName,
              controller: widget.nameController,
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
            controller: widget.phoneController,
            text: "phone number",
            hintText: "",
            prefixIcon: const Icon(Icons.mobile_friendly),
            keyboardType: TextInputType.phone,
          ),
          Gap(5.h),
          MyTextFormField(
              validator: FormValidator.validateEmail,
              controller: widget.emailController,
              text: "email",
              hintText: "You@gmail.com",
              prefixIcon: const Icon(Icons.email_outlined)),
          Gap(5.h),
          MyTextFormField(
            validator: FormValidator.validatePassword,
            controller: widget.passwordController,
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
                widget.passwordController.text, value),
            controller: widget.confirmPasswordController,
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
