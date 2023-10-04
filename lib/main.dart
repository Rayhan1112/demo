
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:demo/Camera.dart';
import 'package:demo/Dashboard.dart';
import 'package:demo/Login.dart';
import 'package:demo/data.dart';
import 'package:flutter/material.dart';


void main() => runApp(MaterialApp(
  home: Login(),
  debugShowCheckedModeBanner: false,

));

class Home1 extends StatefulWidget {
  const Home1({super.key});

  @override
  State<Home1> createState() => _HomeState();
}

class _HomeState extends State<Home1> {
  int index=0;
  @override
  Widget build(BuildContext context) {

    List<Widget> listView= [
      Login(),
      data(),
      Dash(),
      Camera(),
    ];

    final items=<Widget>[
      Icon(Icons.home),
      Icon(Icons.info),
      Icon(Icons.dashboard,size:30),
      Icon(Icons.camera,size:30),
    ];

    return Scaffold(
          appBar: AppBar(
            title:  Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Center(child: Text('Bottam Navigation', style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold ,color: Colors.black),)),
            ),
            elevation: 10,
            backgroundColor: Colors.white,
          ),


          body: SingleChildScrollView(
            child:Container(
              child: Center(
                child: Column(
                  children: [
                    listView[index],
                  ],
                ),
              ),  ),
          ),


          bottomNavigationBar: CurvedNavigationBar(
            items: items,
            color: Colors.grey,
            height: 70,
            buttonBackgroundColor: Colors.white,
            backgroundColor: Colors.transparent,
            onTap: (index){
              setState(() {
                this.index=index;
              });

            },
            index: index,
          ),
    );


  }
}

