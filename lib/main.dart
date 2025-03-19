import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moteelz/moteelz_app.dart';

import 'package:moteelz/core/config/routing/app_router.dart';
import 'package:moteelz/core/di/dependency_injection.dart' as di;
import 'package:moteelz/generated/codegen_loader.g.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();
  di.setupGetIt();
  EasyLocalization.logger.enableBuildModes = [];
  runApp(EasyLocalization(
    startLocale: const Locale('ar'),
    supportedLocales: const [
      Locale('en'),
      Locale('ar'),
    ],
    path: 'assets/translations',
    fallbackLocale: const Locale('en'),
    assetLoader: const CodegenLoader(),
    child: MoteelzApp(appRouter: AppRouter()),
  ));
}

// dart run build_runner build --delete-conflicting-outputs

/// USE THIS COMMAND FOR GENERATE (CodegenLoader)
// flutter pub run easy_localization:generate --source-dir ./assets/translations

/// USE THIS COMMAND FOR GENERATE (LocalizationKeys)
// flutter pub run easy_localization:generate --source-dir ./assets/translations -f keys -o localization_keys.g.dart
