import 'package:flutter/material.dart';
import 'package:todo_final_project/models/user_model.dart';

class UserModelView extends ChangeNotifier{
  late String Usernamedata ;

  login(String username,String password)
  {
    Usernamedata = username;
    notifyListeners();
  }

  getUsername(){
    return Usernamedata;
  }



}