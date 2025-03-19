import 'package:dio/dio.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../../generated/localization_keys.g.dart';
import 'api_error_model.dart';

class ServerException implements Exception {
  final ApiErrorModel apiErrorModel;

  ServerException({required this.apiErrorModel});
}

class ApiErrorHandler {
  static void handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionTimeout:
          throw ServerException(
            apiErrorModel: ApiErrorModel(
              message: LocaleKeys.General_connectionTimeout.tr(),
            ),
          );
        case DioExceptionType.sendTimeout:
          throw ServerException(
            apiErrorModel: ApiErrorModel(
              message: LocaleKeys.General_sendTimeout.tr(),
            ),
          );
        case DioExceptionType.receiveTimeout:
          throw ServerException(
            apiErrorModel: ApiErrorModel(
              message: LocaleKeys.General_receiveTimeout.tr(),
            ),
          );
        case DioExceptionType.badCertificate:
          throw ServerException(
            apiErrorModel: ApiErrorModel(
              message: LocaleKeys.General_badCertificate.tr(),
            ),
          );
        case DioExceptionType.cancel:
          throw ServerException(
            apiErrorModel: ApiErrorModel(
              message: LocaleKeys.General_canceledRequest.tr(),
            ),
          );
        case DioExceptionType.connectionError:
          throw ServerException(
            apiErrorModel: ApiErrorModel(
              message: LocaleKeys.General_connectionError.tr(),
            ),
          );
        case DioExceptionType.unknown:
          throw ServerException(
            apiErrorModel: ApiErrorModel(
              message: LocaleKeys.General_unknownError.tr(),
            ),
          );
        case DioExceptionType.badResponse:
          _handleError(error);
          break;
      }
    } else {
      throw ServerException(
        apiErrorModel: ApiErrorModel(
          message: LocaleKeys.General_unknownError.tr(),
        ),
      );
    }
  }
}

void _handleError(DioException error) {
  if (error.response != null) {
    final data = error.response!.data;
    if (data is Map<String, dynamic> &&
        (data.containsKey('message') || data.containsKey('error_message'))) {
      final apiErrorModel = ApiErrorModel.fromJson(data);
      throw ServerException(apiErrorModel: apiErrorModel);
    } else {
      throw ServerException(
        apiErrorModel: ApiErrorModel(
          message: LocaleKeys.General_unknownError.tr(),
        ),
      );
    }
  }
}
