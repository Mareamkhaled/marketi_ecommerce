import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/auth/create_new_password.dart/view/congratulation_screen.dart';
import '../../features/auth/create_new_password.dart/view/create_new_password.dart';
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
import 'routes.dart';

class Routing {
  Routing();
  Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => SplashScreen());
      case Routes.test:
        return MaterialPageRoute(builder: (context) => TestScreen());
      case Routes.onboarding:
        return MaterialPageRoute(builder: (context) => OnboardingScreen());
      case Routes.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(api: DioConsumer(Dio())),
            child: LoginScreen(),
          ),
        );
      case Routes.signup:
        return MaterialPageRoute(builder: (context) => SignupScreen());
      case Routes.forgetWithPhone:
        return MaterialPageRoute(
            builder: (context) => ForgetPasswordWithPhone());
      case Routes.forgetWithEmail:
        return MaterialPageRoute(
            builder: (context) => ForgetPasswordWithEmail());
      case Routes.vertificationWithPhone:
        return MaterialPageRoute(
            builder: (context) => VertificationCodeWithPhone());
      case Routes.vertificationWithEmail:
        return MaterialPageRoute(
            builder: (context) => VertificationCodeWithEmail());
      case Routes.createNewPassword:
        return MaterialPageRoute(builder: (context) => CreateNewPassword());
      case Routes.congratulationScreen:
        return MaterialPageRoute(builder: (context) => CongratulationScreen());

      default:
        return MaterialPageRoute(builder: (_) => NoRouteScreen());
    }
  }
}

class NoRouteScreen extends StatelessWidget {
  const NoRouteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Text("No Route Found"),
    ));
  }
}
