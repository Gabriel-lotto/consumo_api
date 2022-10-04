import 'package:dio/dio.dart';

import '../errors/error_api.dart';
import 'dio_repository.dart';

class DioNetworkImpl implements DioNetworkRepository {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/';
  final Dio api;
  DioNetworkImpl(this.api);

  @override
  Future<Response> get(String url) async {
    try {
      final response = await api.get(baseUrl + url);
      return response;
    } on DioError catch (e) {
      throw ApiErrors(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<Response> post(String url, data) async {
    try {
      final response = await api.post(baseUrl + url, data: data);
      return response;
    } on DioError catch (e) {
      throw ApiErrors(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<Response> put(String url, data) async {
    try {
      final response = await api.put(baseUrl + url, data: data);
      return response;
    } on DioError catch (e) {
      throw ApiErrors(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }

  @override
  Future<Response> delete(String url, data) async {
    try {
      final response = await api.delete(baseUrl + url, data: data);
      return response;
    } on DioError catch (e) {
      throw ApiErrors(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
