import 'package:demo/routes.dart';
import 'package:flutter/material.dart';
import 'Login.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';



String get_name="";
String get_pass="";

void main() => runApp(GetMaterialApp(
  home: data(),
));

class data extends StatefulWidget {
  @override
  State<data> createState() => _dataState();
}

class _dataState extends State<data> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadCounter();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.red,
          body: Center(
            child: Padding(
              padding: EdgeInsets.only(top: 380),
              child: Column(
                children: [
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 31),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30.0, bottom: 20.0),
                    child: Text(get_name, style: TextStyle(fontSize: 25,color: Colors.purpleAccent),),
                  ),
                  Text(get_pass, style: TextStyle(fontSize: 25, color: Colors.black),),

                  Padding(
                    padding: const EdgeInsets.only(top:26.0),
                    child: GestureDetector(
                      onTap: (){
                        // Get.to(Login(), transition: Transition.fade);
                        Get.toNamed(RouteClass.login);
                      },
                      child: Text("Back"),
                    ),
                  )
                ],
              ),
            ),
          )
      );


  }

  void loadCounter() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    setState(() {
      get_name = pref.getString("name") ?? 'No Value';
      get_pass = pref.getString("pass") ?? '';
    });




  }
}
