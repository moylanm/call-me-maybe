import 'package:flutter/material.dart';
import 'main_screen.dart';

class App extends StatelessWidget {
  final String title;

  const App({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: title,
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MainScreen(title: 'Main Screen'),
    );
  }
}