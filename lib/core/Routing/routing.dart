// ignore_for_file: prefer_relative_imports

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketi_ecommerce/features/auth/signup/logic/cubit/signup_cubit.dart';

import '../../features/auth/create_new_password.dart/view/congratulation_screen.dart';
import '../../features/auth/create_new_password.dart/view/create_new_password.dart';
import '../../features/auth/forget_password/cubit/forget_password_cubit.dart';
import '../../features/auth/forget_password/views/forget_password_with_email.dart';
import '../../features/auth/forget_password/views/forget_password_with_phone.dart';
import '../../features/auth/login/logic/cubit/login_cubit.dart';
import '../../features/auth/login/ui/views/login_screen.dart';
import '../../features/auth/signup/ui/views/signup_screen.dart';
import '../../features/auth/vertification/views/vertification_code_with_email.dart';
import '../../features/auth/vertification/views/vertification_code_with_phone.dart';
import '../../features/onboarding/ui/screens/onboarding_screen.dart';
import '../../features/splash/ui/screens/splash_screen.dart';
import '../../test_screen.dart';
import '../api/dio_consumer.dart';
import '../helpers/service_locator.dart';
import 'routes.dart';

class Routing {
  Routing();
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());

      case Routes.test:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => LoginCubit(api: DioConsumer(Dio())),
                  child: const TestScreen(),
                ));

      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());

      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(
              api: DioConsumer(
                Dio(),
              ),
            ),
            child: const LoginScreen(),
          ),
        );

      case Routes.signup:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => SignupCubit(
                    api: DioConsumer(
                      Dio(),
                    ),
                  ),
                  child: const SignupScreen(),
                ));

      case Routes.forgetPasswordWithPhone:
        return MaterialPageRoute(
            builder: (context) => const ForgetPasswordWithPhone());

      case Routes.forgetPasswordWithEmail:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => getIt<ForgetPasswordCubit>(),
            child: const ForgetPasswordWithEmail(),
          ),
        );

      case Routes.vertificationWithPhone:
        return MaterialPageRoute(
            builder: (context) => const VertificationCodeWithPhone());

      case Routes.vertificationWithEmail:
        return MaterialPageRoute(
          builder: (context) => BlocProvider.value(
            value: getIt<ForgetPasswordCubit>(),
            child: const VertificationCodeWithEmail(),
          ),
        );

      case Routes.createNewPassword:
        return MaterialPageRoute(
          builder: (context) {
            // final args = settings.arguments as Map<String, dynamic>?;
            // final email = args?['email'];
            return BlocProvider.value(
              value: getIt<ForgetPasswordCubit>(),
              child: const CreateNewPassword(),
            );
          },
        );

      case Routes.congratulationScreen:
        return MaterialPageRoute(
            builder: (context) => const CongratulationScreen());

      default:
        return MaterialPageRoute(builder: (_) => const NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(
      child: Text("No Route Found"),
    ));
  }
}
