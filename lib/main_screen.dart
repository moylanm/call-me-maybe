import 'package:call_me_maybe/components/centered_placeholder.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String title;
  
  const MainScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: const CenteredPlaceholder(padding: 50),
    );
  }
}