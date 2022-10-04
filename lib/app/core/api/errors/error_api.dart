class ApiErrors implements Exception {
  final String message;
  final int? statusCode;

  ApiErrors({required this.message, this.statusCode});
}
