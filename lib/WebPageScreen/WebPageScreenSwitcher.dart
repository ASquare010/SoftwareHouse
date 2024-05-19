import 'package:flutter/material.dart';
import 'package:software_house_aa_new/ModalClasses/EditProfile.dart';
import 'package:software_house_aa_new/ModalClasses/NavigationBarWeb.dart';
import 'package:software_house_aa_new/ModalClasses/ThemeClass.dart';
import 'package:software_house_aa_new/WebPageScreen/HomeScreen/WebHomeScreen.dart';

class WebPageScreenSwitcher extends StatefulWidget {
  @override
  _WebPageScreenSwitcherState createState() => _WebPageScreenSwitcherState();
}

class _WebPageScreenSwitcherState extends State<WebPageScreenSwitcher> {
  var _currentIndex = 0;

  List<LeftNavyBarItem> _itemList() {
    return [
      LeftNavyBarItem(icon: Icon(Icons.home_outlined), title: Text("Home"), activeColor: redMain, inactiveColor: grey),
      LeftNavyBarItem(icon: Icon(Icons.person), title: Text("Home"), activeColor: redMain, inactiveColor: grey),
      LeftNavyBarItem(icon: Icon(Icons.save), title: Text("Home"), activeColor: redMain, inactiveColor: grey),
      LeftNavyBarItem(
          icon: Icon(Icons.remove_red_eye_outlined), title: Text("Home"), activeColor: redMain, inactiveColor: grey),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: w,
      body: Row(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: w,
              child: Column(
                children: [
                  ProfileAvatar(
                    showName: true,height: 100,
                  ),
                  LeftNavyBar(
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
                  )
                ],
              ),
            ),
          ),

          ///screens switch
          Expanded(
            flex: 15,
            child: _returnPage(_currentIndex),
          ),
        ],
      ),
    );
  }

  Widget _returnPage(int index) {
    if (index == 0) {
      return WebHomeScreen();
    } else {
      return WebHomeScreen();
    }
  }
}
