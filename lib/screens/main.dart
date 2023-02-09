import 'package:call_me_maybe/components/app_bar.dart';
import 'package:call_me_maybe/screens/business_card.dart';
import 'package:call_me_maybe/screens/predictor.dart';
import 'package:call_me_maybe/screens/resume.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  static const tabs = [
    Tab(icon: Icon(Icons.face)),
    Tab(icon: Icon(Icons.insert_drive_file)),
    Tab(icon: Icon(Icons.help_outline)),
  ];

  final screens = [
    BusinessCard(),
    Resume(),
    Predictor()
  ];

  final String title;

  Main({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabs.length, 
      child: Scaffold(
        appBar: appBar(
          title: title,
          bottom: TabBar(tabs: tabs)  
        ),
        body: TabBarView(children: screens),
      )
    );
  }

}