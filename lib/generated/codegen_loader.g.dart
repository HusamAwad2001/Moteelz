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
  },
  "start_price": "Price starts from: ",
  "nights": {
    "one": "{} night",
    "few": "{} nights",
    "other": "{} nights"
  },
  "filter": "Filter",
  "search": "Search",
  "country": "Country",
  "clear_all": "Clear All",
  "price": "Price",
  "empty_wallets": "No wallets found",
  "empty_countries": "No countries found",
  "number_of_nights": "Choose the number of nights",
  "card_description": "Card Description",
  "card_features": "Card features",
  "continue_to_pay": "Continue to pay",
  "pay_now": "Pay now",
  "discount_coupon": "Do you have a discount coupon?",
  "enter_discount_coupon": "Enter the discount coupon",
  "apply": "Apply",
  "amount_details": "Amount Details",
  "vat": "VAT",
  "total_amount": "Total Amount",
  "payment_details": "Payment Details",
  "credit_or_debit_card": "Credit or Debit Card",
  "card_name": "Card Name",
  "card_number": "Card Number",
  "expiry_date": "Expiry Date",
  "cvc": "CVC"
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
  },
  "start_price": " السعر يبدأ من:",
  "nights": {
    "zero": "لا ليالٍ",
    "one": "ليلة",
    "two": "ليلتين",
    "few": "{} ليالي",
    "many": "{} ليلة",
    "other": "{} ليلة"
  },
  "filter": "التصفية",
  "search": "بحث",
  "country": "الدولة",
  "clear_all": "محو الكل",
  "price": "السعر",
  "empty_wallets": "لا يوجد حسابات متاحة",
  "empty_countries": "لا يوجد دول متاحة",
  "number_of_nights": "اختر عدد الليالي",
  "card_description": "وصف البطاقة",
  "card_features": "مميزات البطاقة",
  "continue_to_pay": "المتابعة للدفع",
  "pay_now": "إدفع الآن",
  "discount_coupon": "هل لديك كوبون خصم؟",
  "enter_discount_coupon": "ادخل كوبون الخصم",
  "apply": "تطبيق",
  "amount_details": "تفاصيل المبلغ",
  "vat": "ضريبة القيمة المضافة",
  "total_amount": "المبلغ الإجمالي",
  "payment_details": "بيانات الدفع",
  "credit_or_debit_card": "بطاقة الإئتمان أو الخصم المباشر",
  "card_name": "اسم البطاقة",
  "card_number": "رقم البطاقة",
  "expiry_date": "انتهاء الصلاحية",
  "cvc": "CVC"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": _en, "ar": _ar};
}
