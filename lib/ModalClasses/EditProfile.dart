import 'package:flutter/material.dart';
import 'ThemeClass.dart';

///edit profile page

///  Profile Image

class ProfileAvatar extends StatelessWidget {
  final showName,height ;

  const ProfileAvatar({@required this.showName,this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      padding: const EdgeInsets.all(0),
      margin: EdgeInsets.only(left: 5, right: 5, top: 5),
      decoration: BoxDecoration(
          color: white,
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 0),
              color: black.withOpacity(0.3),
              blurRadius: 4.5,
            ),
          ],
         borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage("https://qph.fs.quoracdn.net/main-qimg-20df28f3b31895e56cba6dbc0515c635")),
              ),
            ),
          ),
          if (showName)
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text(
                'AwaisAmin010',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            )
        ],
      ),
    );
  }
}
