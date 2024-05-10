
import 'package:flutter/material.dart';
import 'package:resume_daily_task/screens/home/homepage.dart';
import 'package:resume_daily_task/screens/home/login/Validation/password_validation.dart';
import 'package:resume_daily_task/screens/home/login/Validation/validation_done.dart';
import '../screens/home/drawer/drawerPage.dart';
import '../screens/home/login/Validation/Gmail_validation.dart';
import '../screens/home/login/first_page.dart';
import '../screens/home/login/login_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {

    '/':(context)=>GmailValidation(),
    '/done':(context)=>HomeScreen(),
    '/pass' : (context)=>PasswordPage(),
    '/log1':(context)=>FScreen(),
    '/login': (context) =>LoginPage() ,
      '/draw'  : (context)=>DrawerPage(),
    '/home': (context) => HomePage(),

  };
}
