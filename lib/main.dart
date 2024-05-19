import 'package:flutter/material.dart';
import 'MobileScreen/ScreenSwitcherMobile.dart';
import 'WebPageScreen/WebPageScreenSwitcher.dart';

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Software House',
      home: ScreenSwitcher()));
}


