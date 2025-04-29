import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:marketi_ecommerce/core/helpers/auth_text_controllers.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());
    final TextEditingController loginEmailController =
      TextEditingController();
   final TextEditingController loginPasswordController =
      TextEditingController();
   final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  signin() async {
    emit(Loginloading());
    try {
  final response = await Dio()
      .post("https://marketi-app.onrender.com/api/v1/auth/signIn", data: {
    "email": loginEmailController.text,
    "password": loginPasswordController.text,
  });
  emit(LoginSucces());
    log(response.toString());
} on Exception catch (e) {
  emit(LoginFailed(errorMessage: e.toString()));
}
   
  }
}
