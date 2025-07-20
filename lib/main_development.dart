import 'package:docdoc/core/di/dependency_injection.dart';
import 'package:docdoc/core/helpers/shared_pref.dart';
import 'package:docdoc/core/observers/bloc_observer.dart';
import 'package:docdoc/docdoc_app.dart';
import 'package:docdoc/firebase_options.dart';
import 'package:docdoc/flavors.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  await ScreenUtil.ensureScreenSize();
  await SharedPrefService.init();
  await initGetIt();
  await _loadToken();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FlavorConfig.appFlavor = Flavor.development;
  runApp(
    EasyLocalization(
      path: 'assets/translations',
      supportedLocales: [Locale('en'), Locale('ar')],
      fallbackLocale: Locale('en'),
      startLocale: Locale('en'),
      child: DocDocApp(token: _token),
    ),
  );
}

final SharedPrefService _pref = SharedPrefService();
String? _token;
Future<void> _loadToken() async {
  _token = await _pref.getSecureString('token');
}
