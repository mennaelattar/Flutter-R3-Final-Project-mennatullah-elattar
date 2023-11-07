import 'package:flutter/cupertino.dart';
import 'package:todo_final_project/models/task_model.dart';

class TaskModelView extends ChangeNotifier {
  final List<TaskModel> tasks = [
    TaskModel("task 1", "completed"),
    TaskModel("task 2", "not_completed"),
    TaskModel("task 3", "not_completed"),
    // TaskModel("task 4", "completed"),
    // TaskModel("task 5", "not_completed"),
    // TaskModel("task 6", "not_completed"),
    // TaskModel("task 7", "completed"),
    // TaskModel("task 8", "not_completed"),
    // TaskModel("task 9", "not_completed"),
    // TaskModel("task 10", "completed"),
    // TaskModel("task 11", "not_completed"),
    // TaskModel("task 12", "not_completed"),
  ];
  getTaskLength ()
  {
    return tasks.length;
  }
  getTaskTitle(int index)
  {
    return tasks[index].title;
  }
  getTaskStatus (int index)
  {
    return tasks[index].Status;
  }
  changeTaskStatus(bool status_value,int index)
  {
    if(status_value == true)
    {
      tasks[index].Status = "completed";
    }
    else
    {
      tasks[index].Status = "not_completed";
    }
    notifyListeners();
  }
  addNewTask(String newTask)
  {
    tasks.add(TaskModel(newTask, "not_completed"));
    notifyListeners();
  }
  editTitleTask(String newTitle,int index)
  {
    tasks[index].title = newTitle;
    notifyListeners();
  }
  deleteTask(int index)
  {
    tasks.removeAt(index);
    notifyListeners();
  }

  getTotalTaskCount()
  {
    return tasks.length;
  }

  getCompletedTaskCount()
  {
    return tasks.where((TaskModel) => TaskModel.Status == "completed").length;
  }

  getNotCompletedTaskCount()
  {
    return tasks.where((TaskModel) => TaskModel.Status == "not_completed").length;
  }

}