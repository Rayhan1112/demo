import 'package:demo/routes.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:get/get.dart';

import 'data.dart';

void main() => runApp(GetMaterialApp(
      home: Login(),
    ));

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _HomeState();
}

class _HomeState extends State<Login> {
  var nameController = TextEditingController();
  var passController = TextEditingController();
  var nameVal="rayhan", passVal="Shaikh";

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getValue();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  SingleChildScrollView(
        child: Scaffold(
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(left: 10, top: 40),
                child: Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 41,
                    color: Colors.purpleAccent,
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.only(top: 150, right: 20, left: 20,),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: TextField(
                  controller: nameController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Name",
                    hintStyle: const TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  controller: passController,
                  style: const TextStyle(color: Colors.black),
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              TextButton(
                  onPressed: () async {
                    var name = nameController.text.toString();
                    var pass = passController.text.toString();
                    var pref = await SharedPreferences.getInstance();

                    //  Adding Value to SharedPreference
                    pref.setString("name", name);
                    pref.setString("pass", pass);
                    Get.to(() => data(),transition: Transition.downToUp);
                    // Get.toNamed(RouteClass.getdata);
                  },
                  child: const Text(
                    'Submit',
                    style: TextStyle(
                        backgroundColor: Colors.green,
                        fontSize: 25,
                        color: Colors.white),
                  )),
              ElevatedButton(onPressed: () {}, child: const Text('Submit')),


              GestureDetector(
                onTap: (){
                },
                child: Container(
                  margin: EdgeInsets.only(top: 100),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(width: 2),
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Card(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              nameVal,
                              style:
                              const TextStyle(fontSize: 21, color: Colors.red),
                            ),
                          ),

                          Text(
                            passVal,
                            style: const TextStyle(
                                fontSize: 21, color: Colors.purpleAccent),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
    );


  }

  Future getValue() async {
    var pref = await SharedPreferences.getInstance();
    var getname = pref.getString("name");
    var getpass = pref.getString("pass");


    setState(() {
      nameVal = getname != null ? getname:"No Valued Saved";
      passVal = getpass != null ? getpass:"No Valued Saved";
    });
  }
}
