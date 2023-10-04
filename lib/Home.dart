import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),

));

class Home extends StatefulWidget{

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
List images=[
  {"id":1, "image-path": 'assets/images/im1'},
  {"id":2, "image-path": 'assets/images/im2'},
  {"id":3, "image-path": 'assets/images/im3'},
];

final CarouselController carouselController=CarouselController();
  @override
  Widget build(BuildContext context) {
    return const Center(
child: SingleChildScrollView(
  child:   Column(
    children: [
      Card(

        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
      Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album, size: 45),
              title: Text('Sonu Nigam'),
              subtitle: Text('Best of Sonu Nigam Song'),
            ),
          ],
        ),
      ),
    ],
  ),
),
    );
  }
}