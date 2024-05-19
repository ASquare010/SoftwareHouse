import 'dart:async';
import 'dart:math';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:software_house_aa_new/ModalClasses/ShowMenuGrid.dart';
import 'package:software_house_aa_new/ModalClasses/ImageSlider.dart';
import 'package:software_house_aa_new/ModalClasses/ThemeClass.dart';



class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final title = "Software House";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        elevation: 0,backgroundColor: redMain,
        title: Text(title,style: TextStyle(color: whiteText),),
      ) ,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 8,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  offset: Offset(1, 1),
                  color: black.withOpacity(0.3),
                  blurRadius: 2,
                ),
              ],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60), bottomRight: Radius.circular(60)),
              color: redMain,
            ),
            width: double.infinity,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: ImageSlider(viewPortFraction: 0.85,height: MediaQuery.of(context).size.height/3,),
                  ),
                  Expanded(
                    child: ShowMenuGrid()
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

}
