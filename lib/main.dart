import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Call Me Maybe',
      theme: ThemeData(primarySwatch: Colors.green),
      home: const MainScreen(title: 'Main Screen'),
    );
  }
}

class MainScreen extends StatelessWidget {
  final String title;
  
  const MainScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}