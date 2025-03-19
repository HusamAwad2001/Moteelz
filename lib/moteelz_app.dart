import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:moteelz/core/helpers/strings/constants.dart';

import 'core/config/routing/app_router.dart';
import 'core/config/routing/routes.dart';
import 'core/config/theming/colors.dart';
import 'core/helpers/strings/shared_pref_keys.dart';

class MoteelzApp extends StatelessWidget {
  final AppRouter appRouter;
  const MoteelzApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    langCode = context.locale.languageCode;
    return ScreenUtilInit(
      designSize: const Size(375, 759),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        title: 'Moteelz',
        theme: ThemeData().copyWith(
          primaryColor: ColorsManager.primary,
          scaffoldBackgroundColor: ColorsManager.white,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: Constants.fontFamily,
              ),
        ),
        initialRoute: Routes.splashScreen,
        onGenerateRoute: appRouter.generateRoute,
      ),
    );
  }
}
