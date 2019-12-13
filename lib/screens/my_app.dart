import 'package:flutter/material.dart';
import 'package:cone/screens/log_in.dart';

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LogIn.route,
      routes: {
        LogIn.route: (context) => LogIn(),
      },
    );
  }
}
