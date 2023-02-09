import 'package:flutter/material.dart';
import 'screens/main.dart';

class App extends StatelessWidget {
  static const String _title = 'Call Me Maybe';

  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Main(title: _title),
    );
  }
}