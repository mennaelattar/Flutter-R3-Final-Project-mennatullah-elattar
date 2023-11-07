import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/task_model_view.dart';
import 'package:todo_final_project/views/layouts/master.dart';
import 'package:todo_final_project/views/screens/home_screen/widgets/tasks_list_view.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MasterWidget(
      screenContent: SafeArea(
          child: Container(
              padding: EdgeInsets.all(20), child: TasksListviewWidget())),
      screenTitle: 'Home',
      screenFotter: true,
    );
  }
}
