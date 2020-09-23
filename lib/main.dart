import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exploring Widgets',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Exploring widgets'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ColoredCircle(color: Colors.red),
                    ColoredCircle(color: Colors.yellow),
                    ColoredCircle(color: Colors.green),
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ColoredCircle(color: Colors.red),
                ColoredCircle(color: Colors.yellow),
                ColoredCircle(color: Colors.green),
                ColoredCircle(color: Colors.white),
                ColoredCircle(color: Colors.green),
                ColoredCircle(color: Colors.yellow),
                ColoredCircle(color: Colors.red),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    ColoredCircle(color: Colors.red),
                    ColoredCircle(color: Colors.yellow),
                    ColoredCircle(color: Colors.green),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ColoredCircle extends StatelessWidget {
  ColoredCircle({Key key, this.color}) : super(key: key);

  final Color color;
  final double width = 50;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(width / 2),
        color: color,
      ),
    );
  }
}
