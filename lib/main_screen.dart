import 'package:call_me_maybe/components/app_bar.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  final String title;
  
  const MainScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(title: title),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_banner(), _placeholderRow(), _placeholderRow()],
      )
    );
  }

  Widget _banner() {
    return const Text('Vash!', style: TextStyle(fontFamily: 'Raleway', fontSize: 100));
  }

  Widget _paddedPlaceholder() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: SizedBox(
        width: 100, height: 100,
        child: Image.asset('assets/vash.png'),
      ),
    );
  }

  Widget _placeholderRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [_paddedPlaceholder(), _paddedPlaceholder()],
    );
  }
}