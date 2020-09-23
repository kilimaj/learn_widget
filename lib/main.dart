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
  String displayText = '';

  final textController = TextEditingController();

  changeText() {
    setState(() {
      this.displayText = 'Activated airplane mode';
    });
  }

  pressButton() {
    setState(() {
      displayText = textController.text.toString();
    });
  }

  @override
  void dispose() {
    textController.dispose();
    super.dispose();
  }

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
            // TextFields
            TextField(
              decoration: InputDecoration(hintText: 'Enter text here'),
              textAlign: TextAlign.center,
              textCapitalization: TextCapitalization.characters,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.number,
              controller: textController,
              // onSubmitted: (text) {
              //   setState(() {
              //     displayText = text;
              //   });
              // },
              // onChanged: (text) {
              //   setState(() {
              //     displayText = text;
              //   });
              // },
            ),
            MaterialButton(
              onPressed: () => pressButton(),
              child: Text('Press Me'),
            ),
            Text(displayText)

            // Button
            // MaterialButton(
            //   onPressed: () => changeText(),
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       Icon(
            //         Icons.airplanemode_active,
            //         color: Colors.white,
            //       ),
            //       Text('Press me'),
            //     ],
            //   ),
            //   color: Colors.black,
            //   textColor: Colors.white,
            //   highlightColor: Colors.blue, //When long pressed
            //   splashColor: Colors.red,
            //   elevation: 10,
            // ),
            // Padding(
            //   padding: const EdgeInsets.all(16.0),
            //   child: Text(this.displayText),
            // ),

            // Text Widget
            // Text(
            //   'Some Text here',
            //   style: TextStyle(
            //     color: Colors.blue,
            //     fontSize: 50,
            //     fontStyle: FontStyle.italic,
            //     fontWeight: FontWeight.bold,
            //     letterSpacing: 2,
            //     shadows: [
            //       Shadow(
            //         color: Colors.grey,
            //         offset: Offset(-5, -5),
            //       ),
            //     ],
            //     decoration: TextDecoration.underline,
            //     decorationColor: Colors.red,
            //     decorationStyle: TextDecorationStyle.wavy
            //   ),
            // )

            // Column and Row Widgets
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Column(
            //       children: [
            //         ColoredCircle(color: Colors.red),
            //         ColoredCircle(color: Colors.yellow),
            //         ColoredCircle(color: Colors.green),
            //       ],
            //     ),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ColoredCircle(color: Colors.red),
            //     ColoredCircle(color: Colors.yellow),
            //     ColoredCircle(color: Colors.green),
            //     ColoredCircle(color: Colors.white),
            //     ColoredCircle(color: Colors.green),
            //     ColoredCircle(color: Colors.yellow),
            //     ColoredCircle(color: Colors.red),
            //   ],
            // ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Column(
            //       children: [
            //         ColoredCircle(color: Colors.red),
            //         ColoredCircle(color: Colors.yellow),
            //         ColoredCircle(color: Colors.green),
            //       ],
            //     ),
            //   ],
            // ),
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
