import 'package:docdoc/docdoc_app.dart';
import 'package:docdoc/firebase_options.dart';
import 'package:docdoc/flavors.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FlavorConfig.appFlavor = Flavor.development;
  runApp(const DocDocApp());
}
