import 'package:flutter/material.dart';
import 'launching_page.dart';
import 'home_page.dart';
import 'history_page.dart';

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
        '/beranda': (context) => HomePage(),
        '/history': (context) => HistoryPage(),
      },
    );
  }
}
