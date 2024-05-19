 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:software_house_aa_new/ModalClasses/ServicesCard.dart';
import 'package:software_house_aa_new/ModalClasses/ThemeClass.dart';

class ServicesWeProvide extends StatelessWidget {


  List<Widget> wigList = [
    CardElevated(), CardElevated(title: 'Website\nDevelopment' ,icon: Icons.web_outlined,svgOne: 'assets/java-script.svg',
    svgTwo: 'assets/php-logo.svg' ,svgThree: 'assets/atom.svg' ,)];


  @override
  Widget build(BuildContext context) {



    return Scaffold(
      appBar: AppBar(
        backgroundColor: redMain,title: Text('Services We Provide'),),
      body: Container(
        child:
        GridView.builder(padding: EdgeInsets.all(8),
          itemCount: wigList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount:  2,childAspectRatio: 1/1.1,crossAxisSpacing: 15, mainAxisSpacing: 15),
          itemBuilder: (BuildContext context, int index) {
            return wigList[index];
          },
        ),


      ),
    );
  }
}
