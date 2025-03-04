import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../../../core/helpers/form_validator.dart';
import '../../../../../core/widgets/my_text_form_field.dart';

class LogInForm extends StatefulWidget {
  const LogInForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  State<LogInForm> createState() => _LogInFormState();
}

class _LogInFormState extends State<LogInForm> {
  bool isObsecure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: widget.formKey,
          child: Column(
            children: [
              MyTextFormField(
                controller: widget.emailController,
                validator: FormValidator.validateEmail,
                hintText: "enter your email",
                prefixIcon: Icon(Icons.email),
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
                      ? Icon(Icons.visibility_off)
                      : Icon(Icons.visibility),
                ),
                controller: widget.passwordController,
                validator: FormValidator.validatePassword,
                hintText: "enter your password",
                prefixIcon: Icon(Icons.lock),
                text: "",
                isObscureText: isObsecure,
              ),
            ],
          ),
        ),
        Gap(20),
      ],
    );
  }
}
