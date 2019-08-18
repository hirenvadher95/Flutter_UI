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
          body: ListView(
            children: [
              Image.asset(
                'assets/t.jfif',
                width: 600,
                height: 240,
                fit: BoxFit.cover,
              ),
              titleScreen,
              buttonSection,
              textSection
            ],
          )),
    );
  }
}

Column _buttonColum(Color color, IconData iconData, String name) {
  return Column(
    children: [
      Icon(
        iconData,
        color: color,
      ),
      Container(
        margin: EdgeInsets.only(top: 8),
        child: Text(name,
            style: TextStyle(
                fontSize: 12, color: color, fontWeight: FontWeight.w600)),
      )
    ],
  );
}

Widget titleScreen = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 8),
              child: Text(
                'Oeschinen Lake Campground',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Kandersteg, Switzerland',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      Text('41'),
    ],
  ),
);

Widget buttonSection = Container(
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _buttonColum(Colors.red, Icons.call, 'CALL'),
      _buttonColum(Colors.blue, Icons.near_me, 'ROUTE'),
      _buttonColum(Colors.grey, Icons.share, 'SHARE')
    ],
  ),
);

Widget textSection = Container(
  child: Padding(
    padding: const EdgeInsets.all(32.0),
    child: Text(
      'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
      'Alps. Situated 1,578 meters above sea level, it is one of the '
      'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
      'half-hour walk through pastures and pine forest, leads you to the '
      'lake, which warms to 20 degrees Celsius in the summer. Activities '
      'enjoyed here include rowing, and riding the summer toboggan run.',
      softWrap: true,
    ),
  ),
);
