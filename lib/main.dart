import 'package:flutter/material.dart';
import 'launching_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HydroCheckApp',
      initialRoute: '/',
      routes: {
        '/': (context) => LaunchingPage(),
      },
    );
  }
}