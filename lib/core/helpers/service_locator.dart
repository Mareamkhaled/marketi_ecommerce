import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../features/auth/forget_password/cubit/forget_password_cubit.dart';
import '../api/dio_consumer.dart';

final getIt = GetIt.instance;

void setup() {
  getIt.registerSingleton(ForgetPasswordCubit(api: DioConsumer(Dio())));
}
