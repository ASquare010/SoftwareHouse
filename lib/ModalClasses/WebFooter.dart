import 'package:flutter/material.dart';

import 'ThemeClass.dart';

class WebFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      height: MediaQuery.of(context).size.height * 0.3,
      color: redMain,
      child: Row(
        children: [
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text('call me'), Text('call me'), Text('call me')],
          )),
          Container(
            color: white,
            height: MediaQuery.of(context).size.height * 0.3,
            width: 1,
          ),
          Expanded(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [Text('call me'), Text('call me'), Text('call me')],
          ))
        ],
      ),
    );
  }
}
