part of 'login_cubit.dart';

sealed class LoginState extends Equatable {
  const LoginState();

  @override
  List<Object> get props => [];
}

final class LoginInitial extends LoginState {}
final class LoginSucces extends LoginState {}
final class Loginloading extends LoginState {}
final class LoginFailed extends LoginState {
  final String errorMessage;
  const LoginFailed({required this.errorMessage});
  
}
