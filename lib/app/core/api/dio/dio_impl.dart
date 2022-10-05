import 'package:dio/dio.dart';

import '../errors/error_api.dart';
import '../network_interface/network_repository.dart';

class DioNetworkImpl implements NetWorkRepository {
  final Dio api;
  DioNetworkImpl(this.api);

  @override
  Future<Response> get(String url) async {
    try {
      final response = await api.get(url);
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
      final response = await api.post(url, data: data);
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
      final response = await api.put(url, data: data);
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
      final response = await api.delete(url, data: data);
      return response;
    } on DioError catch (e) {
      throw ApiErrors(
        message: e.message,
        statusCode: e.response?.statusCode,
      );
    }
  }
}
