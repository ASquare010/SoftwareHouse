import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:software_house_aa_new/ModalClasses/ImageSlider.dart';
import 'package:software_house_aa_new/ModalClasses/ServicesCard.dart';
import 'package:software_house_aa_new/ModalClasses/ThemeClass.dart';
import 'package:software_house_aa_new/ModalClasses/WebFooter.dart';

class WebHomeScreen extends StatefulWidget {
  @override
  _WebHomeScreenState createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: redMain,title: Text('Software House'),centerTitle: true,elevation: 0,),
       backgroundColor: w,
      body: Scrollbar(
        isAlwaysShown: true,
        child: ListView.builder(
            itemCount: 8,
            itemBuilder: (context, index) {
              return wigList(index);
            }),
      ),
    );
  }

  Widget wigList(var index) {
    final List _titleList = [
      "Component \nInfo",
      "Website \nDevelopment",
      "Mobile App \nDevelopment",
      "Hybrid App \nDevelopment",
      "OutTeam \nWork",
      "Contact us"
    ];
    List<Widget> m = [
      ImageSlider(
        viewPortFraction: 0.75,
        height: MediaQuery.of(context).size.height * 0.4,
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Our View',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),

      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 20),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkCard(
              title: _titleList[0],
            ),
            InkCard(
              title: _titleList[1],
            ),
            InkCard(
              title: _titleList[2],
            ),
            InkCard(
              title: _titleList[3],
            ),
            InkCard(
              title: _titleList[4],
            ),
            InkCard(
              title: _titleList[5],
            ),
          ],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Our Services',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [CardElevated(), CardElevated(), CardElevated(), CardElevated()],
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          'Contact Us',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
        ),
      ),
      Padding(
        padding: EdgeInsets.all(20),
        child: ContactTextForm(),
      ),
      WebFooter()
    ];
    return m[index];
  }
}

class InkCard extends StatelessWidget {
  InkCard({this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {},
        child: Ink(

          height: 250,
          width: 200,
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
                    title,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Ink(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://img.freepik.com/free-vector/colorful-palm-silhouettes-background_52683-39818.jpg?size=626&ext=jpg',
                          ),
                          fit: BoxFit.cover),
                      color: Colors.white,
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}

class ContactTextForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
     children: [
       Expanded(
           child: Padding(
             padding: const EdgeInsets.symmetric(horizontal: 8),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(vertical: 8),
                   child: Material(
                     shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: redMain)),
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
                         borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: redMain)),
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
               ],
             ),
           )),
       Expanded(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 8),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8),
                 child: Material(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: redMain)),
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
               Padding(
                 padding: const EdgeInsets.symmetric(vertical: 8),
                 child: Material(
                   shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(18.0), side: BorderSide(color: redMain)),
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
               )
             ],
           ),
         ),
       ),
       ElevatedButton(
         onPressed: () {},
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Column(
             mainAxisSize: MainAxisSize.min,
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Icon(Icons.done_outline),
               RotatedBox(
                 quarterTurns: 3,
                 child: Text('Submit'),
               )
             ],
           ),
         ),
         style: ButtonStyle(backgroundColor: MaterialStateProperty.all(redMain)),
       )
     ],
      );
  }
}
