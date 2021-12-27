import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:sobaar/screens/welcome_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    /* SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.grey,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.light,
      ),
    ); */
    return MaterialApp(
      // theme: ThemeData(primaryColor: Colors.purple[900]),
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
