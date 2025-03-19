// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters, constant_identifier_names

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> _en = {
  "General": {
    "connectionTimeout": "Connection timed out. Please try again.",
    "sendTimeout": "Request timed out while sending. Please check your connection and try again.",
    "receiveTimeout": "Response timed out. Please check your connection and try again.",
    "badCertificate": "Invalid security certificate. Connection aborted.",
    "canceledRequest": "Request has been canceled.",
    "connectionError": "No internet connection detected. Please check your connection.",
    "unknownError": "Something went wrong. Please try again."
  }
};
static const Map<String,dynamic> _ar = {
  "General": {
    "connectionTimeout": "انتهت مهلة الاتصال، يرجى المحاولة مرة أخرى",
    "sendTimeout": "انتهت مهلة الطلب أثناء الإرسال، يرجى التحقق من الاتصال والمحاولة مرة أخرى",
    "receiveTimeout": "انتهت مهلة الاستجابة، يرجى التحقق من الاتصال والمحاولة مرة أخرى",
    "badCertificate": "شهادة أمان غير صالحة، تم إنهاء الاتصال",
    "canceledRequest": "تم إلغاء الطلب",
    "connectionError": "لا يوجد اتصال بالإنترنت، يرجى التحقق من الاتصال",
    "unknownError": "حدث خطأ ما، يرجى المحاولة مرة أخرى"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en, "ar": _ar};
}
