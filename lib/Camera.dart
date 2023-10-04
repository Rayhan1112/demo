import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Camera(),
    ));

class Camera extends StatefulWidget {
  @override
  State<Camera> createState() => _HomeState();
}

class _HomeState extends State<Camera> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Thi is Camera',
        style: TextStyle(fontSize: 31, color: Colors.white),
      ),
    );
  }
}
