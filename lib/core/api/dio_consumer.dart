import 'package:dio/dio.dart';
import 'package:marketi_ecommerce/core/api/api_consumer.dart';
import 'package:marketi_ecommerce/core/errors/exceptions.dart';

class DioConsumer extends ApiConsumer {
  final Dio dio;
  DioConsumer(this.dio);

  @override
  delete(path, {Map<String, dynamic>? queryParameters, Object? data}) async {
    try {
      final response =
          await dio.delete(path, queryParameters: queryParameters, data: data);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  get(path, {Map<String, dynamic>? queryParameters, Object? data}) async {
    try {
      final response =
          await dio.get(path, queryParameters: queryParameters, data: data);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  post(path, {Map<String, dynamic>? queryParameters, Object? data}) async {
    try {
      final response =
          await dio.post(path, queryParameters: queryParameters, data: data);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }

  @override
  put(path, {Map<String, dynamic>? queryParameters, Object? data}) async {
    try {
      final response =
          await dio.put(path, queryParameters: queryParameters, data: data);
      return response.data;
    } on DioException catch (e) {
      handleDioExceptions(e);
    }
  }
}
