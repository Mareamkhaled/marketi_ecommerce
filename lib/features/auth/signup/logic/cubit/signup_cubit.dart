import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/api/api_consumer.dart';
import '../../../../../core/api/end_points.dart';
import '../../../../../core/errors/exceptions.dart';
import '../../../../../core/helpers/auth_text_controllers.dart';

part 'signup_state.dart';

class SignupCubit extends Cubit<SignupState> {
  SignupCubit({required this.api}) : super(SignupInitial());
  ApiConsumer api;

  signUp() async {
    emit(SignupLoading());
    try {
      await api.post(EndPoints.signUp, data: {
        "name": AuthTextControllers.signUpNameController.text,
        "phone": AuthTextControllers.signUpPhoneController.text,
        "email": AuthTextControllers.signUpEmailController.text,
        "password": AuthTextControllers.signUpPasswordController.text,
        "confirmPassword":
            AuthTextControllers.signUpConfirmPasswordController.text,
      });
      emit(SignupSuccess());
    } on ServerException catch (e) {
      emit(SignupFailure(errorMessage: e.errorModel.errorMessage));
    }
  }
}
