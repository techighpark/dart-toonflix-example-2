import 'package:flutter/material.dart';
import 'package:toonflix_/screens/home_screen.dart';
import 'package:toonflix_/services/api_service.dart';

void main() {
  ApiService().getTodaysTtoon();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomeScreen(),
    );
  }
}
