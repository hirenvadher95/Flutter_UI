import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Demo"),
          ),
          body: titleScreen),
    );
  }
}

Widget titleScreen = Container(
  padding: EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'Kandersteq Switzerland',
              style: TextStyle(color: Colors.grey[500]),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red,
      ),
      Text("41")
    ],
  ),
);
