

import 'package:flutter/material.dart';
import 'package:software_house_aa_new/ModalClasses/MyBottomNavigationbar.dart';
import 'package:software_house_aa_new/ModalClasses/ThemeClass.dart';

import 'AboutUs/AboutUs.dart';
import 'HomeScreen/HomePage.dart';
import 'Profile/Profile.dart';
import 'ServicesProvided/ServicesWeProvide.dart';

class ScreenSwitcher extends StatefulWidget {
  @override
  _ScreenSwitcherState createState() => _ScreenSwitcherState();
}

class _ScreenSwitcherState extends State<ScreenSwitcher> {
  var _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: white,
        extendBody: true,
        bottomNavigationBar: BottomNavyBar(
          curve: Curves.easeInQuart,
          showElevation: true,
          items: _itemList(),
          selectedIndex: _currentIndex,
          onItemSelected: (_index) {
            setState(() {
              _currentIndex = _index;
            });
          },
          itemCornerRadius: 8,
        ),
        body: _returnPage(_currentIndex),
      ),
    );
  }
}

List<BottomNavyBarItem> _itemList() {
  return [
    BottomNavyBarItem(
        icon: Icon(Icons.home_outlined),
        title: Text("Home"),
        activeColor: redMain,
        inactiveColor: grey),
    BottomNavyBarItem(
        icon: Icon(Icons.home_repair_service),
        title: Text("Services"),
        activeColor: redMain,
        inactiveColor: grey),
    BottomNavyBarItem(
        icon: Icon(Icons.supervised_user_circle_outlined),
        title: Text("About Us"),
        activeColor: redMain,
        inactiveColor: grey),
    BottomNavyBarItem(
        icon: Icon(Icons.person_outline),
        title: Text("Profile"),
        activeColor: redMain,
        inactiveColor: grey),
  ];
}

Widget _returnPage(int index) {
  if (index == 0) {
    return HomeScreen();
  } else if (index == 1) {
    return ServicesWeProvide();
  } else if (index == 2) {
    return AboutUs();
  } else  {
    return Profile();
  }
}
