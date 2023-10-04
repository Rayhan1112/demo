import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Dash(),
    ));

class Dash extends StatefulWidget {
  @override
  State<Dash> createState() => _HomeState();
}

class _HomeState extends State<Dash> {
  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Thi is DashBoard',
      style: TextStyle(
        fontSize: 31,
        color: Colors.white,
      ),
    ));
  }
}
