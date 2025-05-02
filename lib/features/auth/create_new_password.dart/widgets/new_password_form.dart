import 'package:flutter/material.dart';

import '../../../../core/helpers/auth_text_controllers.dart';
import '../../../../core/helpers/form_validator.dart';
import '../../../../core/widgets/my_text_form_field.dart';

class NewPasswordForm extends StatefulWidget {
  const NewPasswordForm({super.key});

  @override
  State<NewPasswordForm> createState() => _NewPasswordFormState();
}

class _NewPasswordFormState extends State<NewPasswordForm> {
  bool isObsecure = true;
  bool isObsecureTwo = true;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: AuthTextControllers.createNewPasswordFormKey,
      child: Column(
        children: [
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
            isObscureText: isObsecure,
            controller: AuthTextControllers.newPasswordController,
            validator: FormValidator.validatePassword,
            prefixIcon: const Icon(Icons.lock),
            text: "Password",
          ),
          MyTextFormField(
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
            controller: AuthTextControllers.confirmNewPasswordController,
            validator: FormValidator.validatePassword,
            prefixIcon: const Icon(Icons.lock),
            text: "Confirm Password",
          ),
        ],
      ),
    );
  }
}
