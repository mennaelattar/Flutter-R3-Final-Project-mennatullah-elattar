import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/Core/routes_app.dart';
import 'package:todo_final_project/model_view/task_model_view.dart';
import 'package:todo_final_project/model_view/user_model_view.dart';
import 'package:todo_final_project/views/screens/home_screen/index.dart';
import 'package:todo_final_project/views/screens/login_screen/index.dart';
import 'package:todo_final_project/views/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<TaskModelView>(
          create: (context) => TaskModelView(),
        ),
        ChangeNotifierProvider<UserModelView>(
          create: (context) => UserModelView(),
        ),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
          routes: RoutesApp.routes),
    );
  }
}
