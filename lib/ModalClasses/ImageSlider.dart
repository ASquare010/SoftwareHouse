import 'dart:async';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:software_house_aa_new/MobileScreen/HomeScreen/HomePage.dart';

import 'ThemeClass.dart';

class ImageSlider extends StatefulWidget {
  final viewPortFraction,height;
  const ImageSlider({this.viewPortFraction,this.height});

  @override
  State<StatefulWidget> createState() => _ImageSliderState(viewPortFraction,height);
}

class _ImageSliderState extends State<ImageSlider> {
  final viewPortFraction,height;

  int _current = 0;
  final List imgListSlider = [
    "https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928__340.jpg",
    "https://wallpaperaccess.com/full/30100.jpg",
    "https://c8.alamy.com/comp/FYH0DJ/a-laptop-with-house-design-software-on-the-screen-over-plots-and-technical-FYH0DJ.jpg",
    "https://wallpapercave.com/wp/wp3248111.png",
    "https://img.freepik.com/free-vector/colorful-palm-silhouettes-background_52683-39818.jpg?size=626&ext=jpg",
    "https://i.ytimg.com/vi/p7TDpx0hsn4/maxresdefault.jpg",
  ];

  _ImageSliderState(this.viewPortFraction, this.height);

  @override
  Widget build(BuildContext context) {

    final List<Widget> imageSliders = imgListSlider
        .map((item) => Container(
      decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 3, offset: Offset(0, 4)),
          ],
          image: DecorationImage(
            image: NetworkImage(
              item,
            ),
            fit: BoxFit.cover,
          ),
          color: Colors.white,
          // border: Border.all(
          //   width: 0.5,
          //   color: Colors.redAccent,
          // ),
          borderRadius: BorderRadius.circular(10)),
    ))
        .toList();


    return Container(
      child: Column(children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            height: height,
              viewportFraction: viewPortFraction,
              autoPlayCurve: Curves.easeOut,
              autoPlay: true,
              enlargeCenterPage: true,
              pageSnapping: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
        ),
        ///indicator
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgListSlider.map((url) {
            int index = imgListSlider.indexOf(url);
            return Container(
              width: 8.0,
              height: 8.0,
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 3.0),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: _current == index ? redMain : grey.withOpacity(0.4),
              ),
            );
          }).toList(),
        ),
      ]),
    );




  }
}
