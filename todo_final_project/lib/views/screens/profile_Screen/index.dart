import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/user_model_view.dart';
import 'package:todo_final_project/views/layouts/master.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MasterWidget(
      screenContent: Consumer<UserModelView>(
        builder: (context, userModelViewObj, child) {
          return SafeArea(
              child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                  decoration: BoxDecoration(border: Border.all(color: ColorApp.mainColor,width: 10,),borderRadius: BorderRadius.circular(100)),
                    child: Image.asset(
                  "images/avatar.avif",
                  width: 120,
                  height: 120,
                )),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shadowColor: ColorApp.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Menna elattar"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shadowColor: ColorApp.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Icon(Icons.email),
                    title: Text("mennaelattar3@gmail.com"),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  shadowColor: ColorApp.mainColor,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: ListTile(
                    leading: Icon(Icons.phone),
                    title: Text("01096856825"),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
              ],
            ),
          ));
        },
      ),
      screenTitle: 'Profile',
      screenFotter: false,
    );
  }
}
