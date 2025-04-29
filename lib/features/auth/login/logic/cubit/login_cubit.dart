import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/errors/exceptions.dart';

import '../../../../../core/api/api_consumer.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/helpers/auth_text_controllers.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit({required this.api}) : super(LoginInitial());
  ApiConsumer api;
  signin() async {
    emit(Loginloading());
    try {
      await api.post(EndPoints.signIn, data: {
        "email": AuthTextControllers.loginEmailController.text,
        "password": AuthTextControllers.loginPasswordController.text,
      });
      emit(LoginSucces());
    } on ServerException catch (e) {
      emit(LoginFailed(errorMessage: e.errorModel.errorMessage));
    }
  }
}
