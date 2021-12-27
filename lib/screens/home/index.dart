import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shadowColor: Colors.grey.shade100,
          // backgroundColor: Colors.white,
          elevation: 0.2,
          // centerTitle: true,
          title: Text(
            widget.title,
          ),
        ),
        body: Center(
          child: Text('Hello World!'),
        ));
  }
}
