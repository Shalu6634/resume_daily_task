import 'package:flutter/material.dart';
import 'package:resume_daily_task/screens/home/homepage.dart';
import '../screens/home/drawer/drawerPage.dart';
import '../screens/home/login/Validation/Gmail_validation.dart';
import '../screens/home/login/first_page.dart';
import '../screens/home/login/login_page.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {

    '/':(context)=>GmailValidation(),
    '/gmail':(context)=>FScreen(),
    '/login': (context) =>LoginPage() ,
      '/draw'  : (context)=>DrawerPage(),
    '/home': (context) => HomePage(),
  };
}
