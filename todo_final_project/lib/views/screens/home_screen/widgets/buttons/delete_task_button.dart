import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/task_model_view.dart';

class DeleteTaskButton extends StatelessWidget {
  int taskIndex;
  DeleteTaskButton({super.key,required this.taskIndex});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.delete,
          color: ColorApp.mainColor,
        ),
        onPressed: () {
          showDialog(context: context, builder: (context){
            return Consumer<TaskModelView>(builder: (context,taskmodelobj,child){
              return AlertDialog(icon: Icon(Icons.delete),content: Text("Are You Sure To Delete This Task ?!"),actions: [
                TextButton(onPressed: (){
                  taskmodelobj.deleteTask(taskIndex);
                  Navigator.of(context).pop();
                }, child: Text("Yes")),TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("Cancel")),
              ],);
            });
          });
        });
  }
}
