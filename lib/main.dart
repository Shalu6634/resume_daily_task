import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:resume_daily_task/utils/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(statusBarColor: Colors.red),
    );
    SystemChrome.setPreferredOrientations([
      // DeviceOrientation.landscapeLeft
    ],);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppRoutes.routes,
    );
  }
}
