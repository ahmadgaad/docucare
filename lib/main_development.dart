import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/extensions/nullable_checks.dart';
import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:docdoc/core/observers/bloc_observer.dart';
import 'package:docdoc/docdoc_app.dart';
import 'package:docdoc/firebase_options.dart';
import 'package:docdoc/flavors.dart';
import 'package:docdoc/shared/utils/constants.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();
  await initGetIt();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await checkIfLoggedInUser();
  FlavorConfig.appFlavor = Flavor.development;
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: Locale('en'),
      startLocale: Locale('en'),
      child: DocDocApp(),
    ),
  );
}

checkIfLoggedInUser() async {
  String? userToken = await sl<SharedPrefService>().getSecuredString(
    SharedPrefKeys.userToken,
  );
  if (userToken.isNotNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
