import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/task_model_view.dart';
import 'package:todo_final_project/views/layouts/master.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MasterWidget(
      screenContent: Consumer<TaskModelView>(builder: (context,taskModelViewObj,child){
        return SafeArea(
            child: Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.center,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorApp.mainColor, width: 10),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Text(
                            'Total Tasks',
                            style: TextStyle(
                                fontSize: 20,
                                color: ColorApp.mainColor,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            '${taskModelViewObj.getTotalTaskCount()}',
                            style: TextStyle(
                                fontSize: 40,
                                color: ColorApp.mainColor,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.center,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorApp.mainColor, width: 10),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Text(
                            'Completed Tasks',
                            style: TextStyle(
                                fontSize: 20,
                                color: ColorApp.mainColor,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            '${taskModelViewObj.getCompletedTaskCount()}',
                            style: TextStyle(
                                fontSize: 40,
                                color: ColorApp.mainColor,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 20),
                      alignment: Alignment.center,
                      width: 300,
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorApp.mainColor, width: 10),
                          borderRadius: BorderRadius.circular(20)),
                      child: Column(
                        children: [
                          Text(
                            'Non-Completed Tasks',
                            style: TextStyle(
                                fontSize: 20,
                                color: ColorApp.mainColor,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 20,),
                          Text(
                            '${taskModelViewObj.getNotCompletedTaskCount()}',
                            style: TextStyle(
                                fontSize: 40,
                                color: ColorApp.mainColor,
                                fontWeight: FontWeight.w900),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                  ),
                ],
              ),
            ));
      },),
      screenTitle: 'Dashboard',
      screenFotter: false,
    );
  }
}
