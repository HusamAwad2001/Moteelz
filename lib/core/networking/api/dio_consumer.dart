import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'package:moteelz/core/networking/errors/api_error_handler.dart';
import 'package:moteelz/core/networking/api/api_consumer.dart';
import 'package:moteelz/core/networking/api/api_interceptors.dart';
import 'package:moteelz/core/networking/api/end_points.dart';

const int _requestTimeout = 30;

class DioConsumer extends ApiConsumer {
  final Dio dio;
  CancelToken? _cancelToken;

  DioConsumer({required this.dio}) {
    dio.options.baseUrl = EndPoints.baseUrl;
    dio.options.sendTimeout = const Duration(seconds: _requestTimeout);
    dio.options.receiveTimeout = const Duration(seconds: _requestTimeout);
    dio.options.connectTimeout = const Duration(seconds: _requestTimeout);
    dio.interceptors.add(ApiInterceptor());
    if (kDebugMode) {
      dio.interceptors.add(PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ));
    }
  }

  void _cancelPreviousRequest() {
    if (_cancelToken?.isCancelled == false) {
      _cancelToken?.cancel('Request cancelled due to a new request.');
    }
    _cancelToken = CancelToken();
  }

  @override
  Future get(String path,
      {Object? data, Map<String, dynamic>? queryParameters}) async {
    _cancelPreviousRequest();
    try {
      final response = await dio.get(
        path,
        data: data,
        queryParameters: queryParameters,
        cancelToken: _cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler.handle(e);
    }
  }

  @override
  Future post(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    _cancelPreviousRequest();
    try {
      final response = await dio.post(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
        cancelToken: _cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler.handle(e);
    }
  }

  @override
  Future patch(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    _cancelPreviousRequest();
    try {
      final response = await dio.patch(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
        cancelToken: _cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler.handle(e);
    }
  }

  @override
  Future put(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    _cancelPreviousRequest();
    try {
      final response = await dio.put(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
        cancelToken: _cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler.handle(e);
    }
  }

  @override
  Future delete(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    bool isFromData = false,
  }) async {
    _cancelPreviousRequest();
    try {
      final response = await dio.delete(
        path,
        data: isFromData ? FormData.fromMap(data) : data,
        queryParameters: queryParameters,
        cancelToken: _cancelToken,
      );
      return response.data;
    } on DioException catch (e) {
      ApiErrorHandler.handle(e);
    }
  }
}
