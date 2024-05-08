import 'package:flutter/material.dart';
import 'package:resume_daily_task/screens/home/homepage.dart';

import '../screens/home/drawer/drawerPage.dart';

class AppRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    '/': (context) => DrawerPage(),
    '/draw': (context) => HomePage(),
  };
}
