import 'dart:async';
import 'package:flutter/material.dart';

class LaunchingPage extends StatefulWidget {
  @override
  _LaunchingPageState createState() => _LaunchingPageState();
}

class _LaunchingPageState extends State<LaunchingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'images/logo_hydro_check.png',
              width: 100.0,
              height: 124.0,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 20.0),
            Text(
              'HydroCheck',
              style: TextStyle(
                color: Color(0xFF2490A9),
                fontSize: 24.0,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}