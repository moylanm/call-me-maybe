import 'package:flutter/material.dart';
import 'package:call_me_maybe/config/styles.dart';

AppBar appBar({required String title, PreferredSizeWidget? bottom}) {
  return AppBar(
    backgroundColor: Styles.themeColor,
    title: Text(title, style: Styles.navBarTitle),
    bottom: bottom
  );
}