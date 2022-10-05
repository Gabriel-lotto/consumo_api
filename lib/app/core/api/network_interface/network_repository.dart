import 'package:dio/dio.dart';

abstract class NetWorkRepository {
  Future<Response> get(String url);
  Future<Response> post(String url, dynamic data);
  Future<Response> put(String url, dynamic data);
  Future<Response> delete(String url, dynamic data);
}
