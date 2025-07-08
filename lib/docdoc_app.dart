import 'package:docdoc/flavors.dart';
import 'package:flutter/material.dart';

class DocDocApp extends StatelessWidget {
  const DocDocApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text(
            FlavorConfig.isDevelopment ? 'Development Mode' : 'Production Mode',
          ),
        ),
      ),
    );
  }
}
