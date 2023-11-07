import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/task_model_view.dart';
import 'package:todo_final_project/views/screens/home_screen/widgets/model_bottom_sheet/index.dart';

class AddTaskButton extends StatelessWidget {
  MainBootomSheet bootomSheetobject = new MainBootomSheet();
  TextEditingController new_task = TextEditingController();
  AddTaskButton({super.key});
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      splashColor: ColorApp.mainColor,
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
                    "Add New Task",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: ColorApp.mainColor),
                  ),
                  TextField(
                    controller: new_task,
                    style: TextStyle(color: ColorApp.mainColor),
                    decoration: InputDecoration(
                        hintText: 'Task Title',
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
                      taskmodelobj.addNewTask(new_task.text);
                      new_task.clear();
                      Navigator.of(context).pop();
                    },
                    child: Text(
                      'Save',
                      style: TextStyle(color: ColorApp.secondColor),
                    ),
                  )
                ],
              ),
            );
          }),
        );
      },
      backgroundColor: Colors.white,
      shape: RoundedRectangleBorder(
          side: BorderSide(width: 3, color: ColorApp.mainColor),
          borderRadius: BorderRadius.circular(100)),
      focusColor: ColorApp.mainColor,
      foregroundColor: ColorApp.mainColor,
      child: Icon(
        Icons.add,
      ),
    );
  }
}
