import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/api/api_consumer.dart';
import '../../../../core/api/end_points.dart';
import '../../../../core/errors/exceptions.dart';
import '../../../../core/helpers/auth_text_controllers.dart';

part 'forget_password_state.dart';

class ForgetPasswordCubit extends Cubit<ForgetPasswordState> {
  ForgetPasswordCubit({required this.api}) : super(ForgetPasswordInitial());
  ApiConsumer api;
  sendForgetPasswordCode() async {
    emit(CodeSendingState());
    try {
      await api.post(EndPoints.sendForgetPasswordEmail, data: {
        "email": AuthTextControllers.forgetPasswordWithEmailController.text,
      });
      emit(CodeSentState());
    } on ServerException catch (e) {
      emit(CodesentFailedState(message: e.errorModel.errorMessage));
    }
  }

  vertificationCodeWithEmail() async {
    emit(ActivatingCode());
    try {
      await api.post(EndPoints.activeResetPass, data: {
        "email": AuthTextControllers.forgetPasswordWithEmailController.text,
        "code": AuthTextControllers.pinCodeController.text,
      });
      emit(CodeActivated());
    } on ServerException catch (e) {
      emit(CodeActivationFailed(message: e.errorModel.errorMessage));
    }
  }

  createNewPassword(String email) async {
    emit(CreateNewPasswordLoading());
    try {
      await api.post(
        EndPoints.resetPassword,
        data: {
          "email": email,
          "password": AuthTextControllers.newPasswordController.text,
          "confirmPassword":
              AuthTextControllers.confirmNewPasswordController.text,
        },
      );
      emit(CreateNewPasswordSuccess());
    } on ServerException catch (e) {
      emit(CreateNewPasswordFailed(message: e.errorModel.errorMessage));
    }
  }
}
