import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_final_project/Core/color_app.dart';
import 'package:todo_final_project/model_view/user_model_view.dart';
import 'package:todo_final_project/views/layouts/master.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController username = TextEditingController();
    TextEditingController password = TextEditingController();
    return Consumer<UserModelView>(builder: (context,userModelViewObj,child){
      return MasterWidget(
        screenContent: Form(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: ListView(children: [
              Image.asset(
                "images/appstore.png",
                width: 150,
                height: 150,
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: username,
                style: TextStyle(color: ColorApp.mainColor),
                decoration: InputDecoration(
                    hintText: 'Username',
                    border: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: ColorApp.mainColor)),
                    focusColor: ColorApp.mainColor),
              ),
              SizedBox(height: 30,),
              TextFormField(
                controller: password,
                keyboardType: TextInputType.visiblePassword,
                style: TextStyle(color: ColorApp.mainColor),
                decoration: InputDecoration(
                    hintText: 'Password',
                    border: UnderlineInputBorder(
                        borderSide:
                        BorderSide(color: ColorApp.mainColor)),
                    focusColor: ColorApp.mainColor),
              ),
              SizedBox(height: 40,),
              TextButton(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 60,vertical: 18),
                  textStyle: TextStyle(color: Colors.white),
                  backgroundColor: ColorApp.mainColor, // Background Color
                ),

                onPressed: () {
                  userModelViewObj.login(username.text, password.text);
                  Navigator.of(context).pushReplacementNamed("home");
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: ColorApp.secondColor,fontSize: 20),
                ),
              )
            ],),
          ),
        ),
        screenTitle: 'Login',
        screenFotter: false,
      );
    });
  }
}
