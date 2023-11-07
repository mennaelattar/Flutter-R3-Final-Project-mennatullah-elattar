import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/task_model_view.dart';
import 'package:todo_final_project/views/screens/home_screen/widgets/buttons/delete_task_button.dart';
import 'package:todo_final_project/views/screens/home_screen/widgets/buttons/edit_task_button.dart';
class TasksListviewWidget extends StatelessWidget {
  const TasksListviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TaskModelView>(
      builder: (context, taskmodelobj, child) {
        return ListView.builder(
          itemCount: taskmodelobj.getTaskLength(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Card(
              shadowColor: ColorApp.mainColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
              child: ListTile(
                leading: Checkbox(
                    activeColor: ColorApp.mainColor,
                    checkColor: ColorApp.secondColor,
                    onChanged: (newValue) {
                      taskmodelobj.changeTaskStatus(newValue!, index);
                    },
                    value:
                    taskmodelobj.getTaskStatus(index) == "completed"
                        ? true
                        : false),
                title: Text(taskmodelobj.getTaskTitle(index)),
                trailing: Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [EditTaskButton(taskIndex: index,),DeleteTaskButton(taskIndex: index,)],
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }
}
