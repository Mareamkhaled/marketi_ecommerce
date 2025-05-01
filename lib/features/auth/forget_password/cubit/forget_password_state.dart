part of 'forget_password_cubit.dart';

sealed class ForgetPasswordState extends Equatable {
  const ForgetPasswordState();

  @override
  List<Object> get props => [];
}

final class ForgetPasswordInitial extends ForgetPasswordState {}
final class CodeSendingState extends ForgetPasswordState {}
final class CodeSentState extends ForgetPasswordState {}
final class CodesentFailedState extends ForgetPasswordState {
  final String message;
  const CodesentFailedState({required this.message});
}

final class ActivatingCode extends ForgetPasswordState {}

final class CodeActivated extends ForgetPasswordState {}

final class CodeActivationFailed extends ForgetPasswordState {
  final String message;
  const CodeActivationFailed({required this.message});
}
