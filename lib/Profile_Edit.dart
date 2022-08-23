import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Delete_Acount.dart';
import 'Edit_Profile_Page.dart';
import 'Log_In_Page.dart';
import 'Log_out.dart';
import 'Notification_page.dart';
import 'Submit_Page.dart';

class Profile_Edit extends StatefulWidget {
  const Profile_Edit({Key? key}) : super(key: key);

  @override
  _Profile_EditState createState() => _Profile_EditState();
}

class _Profile_EditState extends State<Profile_Edit> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: <Widget>[
        Container(
          child: Stack(
            children: [
              Container(
                width: 85.w,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(60),
                        bottomRight: Radius.circular(20))),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'Asset/3042.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 8.h, left: 30.w),
                child: Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(50),
                        child: Image.asset(
                          'Asset/Taha.jpg',
                          width: 22.w,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 5.h, left: 3.w),
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.grey,
                  size: 25,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 33.h,),
                              height: 7.h,
                              width: 84.w,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child:  Row(
                                  children: [
                                    Icon(Icons.account_circle_outlined,color: Colors.grey,),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Edit Profile',
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  primary: Colors.white,
                                  onPrimary: Colors.grey,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Edit_profile_Page()));
                                },
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 42.h,),
                              height: 7.h,
                              width: 84.w,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child:  Row(
                                  children: [
                                    Icon(Icons.contact_page_outlined,color: Colors.grey,),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Submit Resquest',
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  primary: Colors.white,
                                  onPrimary: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Submit_Page()));
                                },
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 52.h,),
                              height: 7.h,
                              width: 84.w,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child:  Row(
                                  children: [
                                    Icon(Icons.delete_outlined,color: Colors.grey,),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Delete my account',
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  primary: Colors.white,
                                  onPrimary: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Delete_page()));
                                },
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 62.h,),
                              height: 7.h,
                              width: 84.w,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child:  Row(
                                  children: [
                                    Icon(Icons.notifications_active_outlined,color: Colors.grey,),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Notification',
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  primary: Colors.white,
                                  onPrimary: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Notification_page()));
                                },
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 72.h,),
                              height: 7.h,
                              width: 84.w,
                              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                              child: ElevatedButton(
                                child:  Row(
                                  children: [
                                    Icon(Icons.logout,color: Colors.grey,),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Text(
                                      'Log Out',
                                      style: TextStyle(
                                          fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  primary: Colors.white,
                                  onPrimary: Colors.white,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Log_Out()));
                                },
                              )),
                        ],
                      ),
                    )
                  ],
                ),
              ),



            ],
          ),
        ),
      ]),
    );
  }
}
