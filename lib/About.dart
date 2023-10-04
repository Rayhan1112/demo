import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: About(),
    ));

class About extends StatefulWidget {
  @override
  State<About> createState() => _HomeState();
}

class _HomeState extends State<About> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Thi is About',
        style: TextStyle(fontSize: 31, color: Colors.white),
      ),
    );
  }
}
