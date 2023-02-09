import 'package:flutter/material.dart';

class Styles {
  static const _textSizeDefault = 20.0;
  static const _textSizeNavBar = 25.0;
  static const _textSizeButton = 30.0;
  static const String _fontNameDefault = 'Raleway';
  static final Color _textColorDefault = _hexToColor('000000');
  static final Color _textColorButton = _hexToColor('FFFFFF');
  static final Color _darkGreen = _hexToColor('007500');

  static final themeColor = _darkGreen;

  static const navBarTitle = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeNavBar,
  );

  static final textDefault = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeDefault,
    //fontWeight: FontWeight.bold,
    color: _textColorDefault,
  );

  static final buttonText = TextStyle(
    fontFamily: _fontNameDefault,
    fontSize: _textSizeButton,
    color: _textColorButton,
  );

  static Color _hexToColor(String code) {
    return Color(int.parse(code.substring(0, 6), radix: 16) + 0xFF000000);
  }
}