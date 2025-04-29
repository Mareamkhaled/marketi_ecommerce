abstract class ApiConsumer {
  get(
    path, {
    Map<String, dynamic>? queryParameters,
    Object? data,
  });
  post(
    path, {
    Map<String, dynamic>? queryParameters,
    Object? data,
  });
  put(
    path, {
    Map<String, dynamic>? queryParameters,
    Object? data,
  });
  delete(
    path, {
    Map<String, dynamic>? queryParameters,
    Object? data,
  });
}
