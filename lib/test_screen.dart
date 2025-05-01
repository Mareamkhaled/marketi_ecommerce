import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'core/Routing/routes.dart';
import 'core/widgets/custom_button.dart';
import 'features/auth/login/logic/cubit/login_cubit.dart';

class TestScreen extends StatelessWidget {
  const TestScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: CustomButton.primary(
            text: "log out",
            onPressed: () {
              context.read<LoginCubit>().signOut();
              Navigator.pushReplacementNamed(context, Routes.login);
            },
          ),
        ),
      ),
    );
  }
}
