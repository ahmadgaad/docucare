import 'package:docdoc/core/configurations/routing/router.dart';
import 'package:docdoc/core/configurations/routing/routes.dart';
import 'package:docdoc/core/configurations/themes/dark_theme.dart';
import 'package:docdoc/core/configurations/themes/light_theme.dart';
import 'package:docdoc/flavors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: FlavorConfig.isDevelopment
            ? ThemeMode.light
            : ThemeMode.dark,
        initialRoute: Routes.onboarding,
        onGenerateRoute: DocDocRouter.generateRoute,
      ),
    );
  }
}
