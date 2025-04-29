import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import '../../../../../core/Routing/routes.dart';
import '../../../../../core/resources/app_images.dart';
import '../../../../../core/widgets/custom_button.dart';
import '../../../login/ui/widgets/log_in_options.dart';
import '../widgets/signup_form.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
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
              SignupForm(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController,
                nameController: _nameController,
                phoneController: _phoneController,
                confirmPasswordController: _confirmPasswordController,
              ),
              Gap(15),
              CustomButton.primary(
                  text: "Sign up",
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, Routes.test);
                    }
                  }),
              Gap(10),
              LogInOptions(),
              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}
