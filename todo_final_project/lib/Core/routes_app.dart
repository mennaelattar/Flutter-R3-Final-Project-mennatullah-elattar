import 'package:flutter/material.dart';
import 'package:todo_final_project/views/screens/dashboard_screen/index.dart';
import 'package:todo_final_project/views/screens/home_screen/index.dart';
import 'package:todo_final_project/views/screens/profile_Screen/index.dart';

class RoutesApp {
  static  Map<String,Widget Function(BuildContext)> routes = {
    "login": (context) => HomeScreen(),
    "home": (context) => HomeScreen(),
    "dashboard": (context) => DashboardScreen(),
    "profile": (context) => ProfileScreen(),
  };
}