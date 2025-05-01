import 'package:flutter/material.dart';

import '../../../../core/helpers/auth_text_controllers.dart';
import '../../../../core/helpers/form_validator.dart';
import '../../../../core/widgets/my_text_form_field.dart';

class NewPasswordForm extends StatelessWidget {
  const NewPasswordForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: AuthTextControllers.createNewPasswordFormKey,
      child: Column(
        children: [
          MyTextFormField(
            obscure: true,
            controller: AuthTextControllers.newPasswordController,
            validator: FormValidator.validatePassword,
            prefixIcon: const Icon(Icons.lock),
            text: "Password",
          ),
          MyTextFormField(
            obscure: true,
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
