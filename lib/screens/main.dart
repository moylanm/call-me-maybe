import 'package:call_me_maybe/config/styles.dart';
import 'package:call_me_maybe/screens/business_card.dart';
import 'package:call_me_maybe/screens/predictor.dart';
import 'package:call_me_maybe/screens/resume.dart';
import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  static const _tabs = [
    Tab(icon: Icon(Icons.face)),
    Tab(icon: Icon(Icons.insert_drive_file)),
    Tab(icon: Icon(Icons.help_outline)),
  ];

  final _screens = [
    BusinessCard(),
    Resume(),
    Predictor()
  ];

  final String title;

  Main({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length, 
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Styles.themeColor,
          title: Text(title, style: Styles.navBarTitle),
          bottom: const TabBar(
            indicatorColor: Colors.white,
            tabs: _tabs
          ),
        ),
        body: TabBarView(children: _screens),
      )
    );
  }

}