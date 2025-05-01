import 'package:flutter/material.dart';
import '../../../../../core/helpers/auth_text_controllers.dart';
import '../../../../../core/helpers/form_validator.dart';
import '../../../../../core/widgets/my_text_form_field.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({
    super.key,
  });

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Form(
            key: AuthTextControllers.loginFormKey,
            child: Column(
              children: [
                MyTextFormField(
                  controller: AuthTextControllers.loginEmailController,
                  validator: FormValidator.validateEmail,
                  hintText: "enter your email",
                  prefixIcon: const Icon(Icons.email),
                  text: "",
                ),
                // Gap(30),
                MyTextFormField(
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
                  controller: AuthTextControllers.loginPasswordController,
                  validator: FormValidator.validatePassword,
                  hintText: "enter your password",
                  prefixIcon: const Icon(Icons.lock),
                  text: "",
                  isObscureText: isObsecure,
                ),
              ],
            ),
          ),
          // Gap(100.h),
        ],
      ),
    );
  }
}
