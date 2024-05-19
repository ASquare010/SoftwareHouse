 import 'package:flutter/material.dart';
import 'package:software_house_aa_new/ModalClasses/EditProfile.dart';
import 'package:software_house_aa_new/ModalClasses/ThemeClass.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: redMain,title: Text('Profile'),),

      body: Container(
        color: DPrimaryColor,
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              color: Colors.transparent,
              child: Stack(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.1 + 5,
                    decoration: BoxDecoration(
                        color: redMain,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30))),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      margin: EdgeInsets.symmetric(horizontal: 20),
                      height: 120,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black12.withOpacity(0.1),
                          blurRadius: 7,
                          offset: Offset(3, 3),
                        )
                      ], color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(60))),
                      child: Row(
                        children: [
                          Expanded(
                              flex: 2,
                              child: Center(
                                child: ProfileAvatar(showName: false,height: 90.0,),
                              )),
                          Expanded(
                              flex: 4,
                              child: Container(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.5,
                                        child: ListView(
                                          scrollDirection: Axis.horizontal,
                                          children: [
                                            Icon(Icons.camera_alt_outlined),
                                            Center(
                                                child: Text(
                                                  "Instagram  Nigr",
                                                  style: TextStyle(
                                                      fontSize: 17, fontWeight: FontWeight.bold),
                                                )),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Text("Package Pro"),
                                    RaisedButton(
                                      onPressed: () {
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //       builder: (context) => EditProfile(),
                                        //     ));
                                      },
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Text(
                                          "Edit Profile",
                                          style: TextStyle(
                                            color: DPrimaryColor,
                                          ),
                                        ),
                                      ),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(8.0),
                                          side: BorderSide(color: redMain)),
                                      color: redMain,
                                      elevation: 0,
                                      highlightElevation: 0,
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: ListView(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  flex: 1,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.purpleAccent,
                                        borderRadius: BorderRadius.all(Radius.circular(25))),
                                    height: 70,
                                    width: 70,
                                    child: Icon(
                                      Icons.star_rate,
                                      color: DPrimaryColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Text("Rate us"),
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: redMain,
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.blue,
                                        borderRadius: BorderRadius.all(Radius.circular(25))),
                                    height: 70,
                                    width: 70,
                                    child: Icon(
                                      Icons.share,
                                      color: DPrimaryColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Text("Share"),
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: redMain,
                                        ),
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.greenAccent,
                                        borderRadius: BorderRadius.all(Radius.circular(25))),
                                    height: 70,
                                    width: 70,
                                    child: Icon(
                                      Icons.delete,
                                      color: DPrimaryColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Text("Delete Account"),
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: redMain,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Flexible(
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: Colors.redAccent,
                                        borderRadius: BorderRadius.all(Radius.circular(25))),
                                    height: 70,
                                    width: 70,
                                    child: Icon(
                                      Icons.logout,
                                      color: DPrimaryColor,
                                    ),
                                  ),
                                ),
                                Expanded(
                                    flex: 3,
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.only(left: 8),
                                          child: Text("Logout"),
                                        ),
                                        Icon(
                                          Icons.arrow_right_outlined,
                                          color: redMain,
                                        ),
                                      ],
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
