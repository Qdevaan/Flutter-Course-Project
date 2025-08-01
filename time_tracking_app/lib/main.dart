// main.dart
import 'package:flutter/material.dart';
import 'screens/main_screen.dart'; // Import your separated screen file

void main() {
  runApp(TimeTrackingApp());
}

class TimeTrackingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Time Tracking App',
      home: MainScreen(),
    );
  }
}
