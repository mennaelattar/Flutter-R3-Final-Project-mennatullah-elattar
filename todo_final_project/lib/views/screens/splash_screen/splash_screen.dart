import 'package:flutter/material.dart';
import 'package:todo_final_project/views/screens/home_screen/index.dart';
import 'package:todo_final_project/views/screens/login_screen/index.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
    });
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(bottom: 20.0),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Image.asset(
                "images/appstore.png",
                height: 150,
                width: 150,
              ),
            )),
            Text(
              "Developed By MennaTullah El-Attar",
              style: TextStyle(color: Colors.grey),
            )
          ],
        ),
      ),
    );
  }
}
