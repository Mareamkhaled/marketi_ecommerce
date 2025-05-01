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
}
