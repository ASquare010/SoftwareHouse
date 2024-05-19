 import 'package:flutter/material.dart';
import 'package:software_house_aa_new/ModalClasses/ThemeClass.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: redMain,title: Text('About Us'),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: redMain)),
                elevation: 3,
                child: TextFormField(
                  style: TextStyle(color: redMain),
                  cursorColor: redMain,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderSide: BorderSide.none,
                      ),
                      fillColor: redMain,
                      labelStyle: TextStyle(
                        color: redMain,
                      ),
                      hintText: " Enter Name",
                      hintStyle: TextStyle(
                        color: redMain.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.account_circle,
                        color: redMain.withOpacity(0.5),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: redMain)),
                elevation: 3,
                child: TextFormField(
                  style: TextStyle(color: redMain),
                  cursorColor: redMain,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderSide: BorderSide.none,
                      ),
                      fillColor: redMain,
                      labelStyle: TextStyle(
                        color: redMain,
                      ),
                      hintText: " Enter Email",
                      hintStyle: TextStyle(
                        color: redMain.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: redMain.withOpacity(0.5),
                      )),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Material(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                    side: BorderSide(color: redMain)),
                elevation: 3,
                child: TextFormField(
                  style: TextStyle(color: redMain),
                  cursorColor: redMain,
                  decoration: InputDecoration(
                      contentPadding: new EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
                      border: OutlineInputBorder(
                        gapPadding: 0,
                        borderSide: BorderSide.none,
                      ),
                      fillColor: redMain,
                      labelStyle: TextStyle(
                        color: redMain,
                      ),
                      hintText: " Enter Number",
                      hintStyle: TextStyle(
                        color: redMain.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.call,
                        color: redMain.withOpacity(0.5),
                      )),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: Material(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: redMain)),
                  elevation: 3,
                  child: TextFormField(
                    style: TextStyle(color: redMain),
                    cursorColor: redMain,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          gapPadding: 0,
                          borderSide: BorderSide.none,
                        ),
                        fillColor: redMain,
                        labelStyle: TextStyle(
                          color: redMain,
                        ),
                        hintText: " Message Here",
                        hintStyle: TextStyle(
                          color: redMain.withOpacity(0.5),
                        ),
                        prefixIcon: Icon(
                          Icons.text_fields,
                          color: redMain.withOpacity(0.5),
                        )),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Align(
                alignment: Alignment.topCenter,
                child: RaisedButton(
                  onPressed: () {},
                  color: redMain,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Icon(
                        Icons.done,
                        color: LIconColor,
                      ),
                      Text(
                        "Submit",
                        style: TextStyle(color: DTextColor),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
