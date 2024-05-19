
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'ThemeClass.dart';

class CardElevated extends StatelessWidget {
  final icon, title , svgOne, svgTwo, svgThree;

  const CardElevated({Key key, this.icon = Icons.smartphone,this.title = 'Mobile App \nDevelopment',this.svgOne = 'assets/apple.svg',this.svgTwo ='assets/android-4.svg',this.svgThree = 'assets/flutter.svg'}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Ink(
         height: 300,
        width: 250,
        decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              blurRadius: 3,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Expanded(
                flex: 3,
                child: Column(
                  children: [
                    Expanded(
                      child: Center(

                        child: CircleAvatar(
                          radius: 25,
                          backgroundColor: redMain,
                          child: Icon(icon,color: DPrimaryColor,),

                        ),
                      ),
                    ),
                    Flexible(
                      child: Text(title,textAlign: TextAlign.center,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),),
                    ),
                  ],
                )
            ),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: redMain,

                    borderRadius: BorderRadius.circular( 10),

                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: DPrimaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset(svgOne,color: redMain,),
                          ),
                        ),
                        CircleAvatar(
                          radius: 18,
                          backgroundColor: DPrimaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset(svgTwo,color: redMain,),
                          ),
                        ),

                        CircleAvatar(
                          radius: 18,
                          backgroundColor: DPrimaryColor,
                          child: Padding(
                            padding: const EdgeInsets.all(6.0),
                            child: SvgPicture.asset(svgThree,color: redMain,),
                          ),
                        )
                      ],),
                  ),
                )
            ),



          ],
        ) ,

      ),
    );
  }
}
