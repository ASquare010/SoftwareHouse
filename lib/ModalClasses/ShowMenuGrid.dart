import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

import 'ThemeClass.dart';

class ShowMenuGrid extends StatefulWidget {
  @override
  _ShowMenuGridState createState() => _ShowMenuGridState();
}

class _ShowMenuGridState extends State<ShowMenuGrid> {
  var columnCount = 3;
  final List imgListSlider = [
    "https://cdn.pixabay.com/photo/2018/01/12/10/19/fantasy-3077928__340.jpg",
    "https://wallpaperaccess.com/full/30100.jpg",
    "https://c8.alamy.com/comp/FYH0DJ/a-laptop-with-house-design-software-on-the-screen-over-plots-and-technical-FYH0DJ.jpg",
    "https://wallpapercave.com/wp/wp3248111.png",
    "https://img.freepik.com/free-vector/colorful-palm-silhouettes-background_52683-39818.jpg?size=626&ext=jpg",
    "https://i.ytimg.com/vi/p7TDpx0hsn4/maxresdefault.jpg",
  ];
  final List _titleList = [
    "Component \nInfo",
    "Website \nDevelopment",
    "Mobile App \nDevelopment",
    "Hybrid App \nDevelopment",
    "OutTeam \nWork",
    "Contact us"
  ];
  @override
  Widget build(BuildContext context) {
    return imgListSlider.length == 0
        ? Center(child: CircularProgressIndicator())
        : AnimationLimiter(
           child: GridView.count(
           childAspectRatio: 1 / 1.3,
           padding: const EdgeInsets.all(20.0),
           crossAxisCount: columnCount,
           crossAxisSpacing: 8,
           mainAxisSpacing: 8,
           children: List.generate(
             imgListSlider.length,
              (int index) {
            return AnimationConfiguration.staggeredGrid(
              columnCount: columnCount,
              position: index,
              duration: const Duration(milliseconds: 375),
              child: SlideAnimation(
                verticalOffset:
                (new Random().nextInt(MediaQuery.of(context).size.height.toInt())).toDouble(),
                horizontalOffset:
                (new Random().nextInt(MediaQuery.of(context).size.width.toInt())).toDouble(),
                child: FadeInAnimation(
                  child: _inkWellCard(
                      _titleList[index],
                      index
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _inkWellCard(var _title,var index) {
    return InkWell(
      onTap: () {},
      child: Ink(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
          color: DPrimaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Center(
                child: Text(
                  _title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuery.of(context).size.width * 0.025,
                      color: lightGrey.withOpacity(0.8),
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Ink(
                  decoration: BoxDecoration(
                    borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                    image: DecorationImage(
                        image: NetworkImage(
                          imgListSlider[index],
                        ),
                        fit: BoxFit.cover),
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
