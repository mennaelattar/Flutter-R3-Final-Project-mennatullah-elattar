import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/task_model_view.dart';
import 'package:todo_final_project/views/screens/home_screen/widgets/model_bottom_sheet/index.dart';

class EditTaskButton extends StatelessWidget {
  MainBootomSheet bootomSheetobject = new MainBootomSheet();
  TextEditingController edit_task = TextEditingController();
  int taskIndex;
   EditTaskButton({super.key,required this.taskIndex});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: Icon(
          Icons.edit,
          color: ColorApp.mainColor,
        ),
        onPressed: () {
          bootomSheetobject.mainBottomSheetFun(
            context,
            Consumer<TaskModelView>(builder: (context, taskmodelobj, child) {
              
              return Container(
                padding: EdgeInsets.all(20),
                height: 200,
                child: Column(
                  children: [
                    Text(
                      "Edit  ' ${taskmodelobj.getTaskTitle(taskIndex)} '",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: ColorApp.mainColor),
                    ),
                    TextField(
                      controller: edit_task,
                      style: TextStyle(color: ColorApp.mainColor),
                      decoration: InputDecoration(
                          hintText: 'New Title',
                          border: UnderlineInputBorder(
                              borderSide:
                              BorderSide(color: ColorApp.mainColor)),
                          focusColor: ColorApp.mainColor),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        textStyle: TextStyle(color: Colors.white),
                        backgroundColor: ColorApp.mainColor, // Background Color
                      ),
                      onPressed: () {
                        taskmodelobj.editTitleTask(edit_task.text,taskIndex);
                        edit_task.clear();
                        Navigator.of(context).pop();
                      },
                      child: Text(
                        'Save Changes',
                        style: TextStyle(color: ColorApp.secondColor),
                      ),
                    )
                  ],
                ),
              );
            }),
          );
        });
  }
}
