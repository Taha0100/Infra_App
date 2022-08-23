import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Log_In_Page.dart';
import 'Profile_Edit.dart';


class Delete_page extends StatefulWidget {
  const Delete_page({Key? key}) : super(key: key);

  @override
  _Delete_pageState createState() => _Delete_pageState();
}

class _Delete_pageState extends State<Delete_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Delete Profile',style: TextStyle(color: Colors.grey),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back,color: Colors.grey,),
        backgroundColor: Colors.white,
      ),
      body: Container(
        child: Container(
          margin: EdgeInsets.only(top: 6.h,),
          child: Column(
            children: [
              Icon(Icons.warning_amber_rounded,color: Colors.grey,size: 100,),
              Container(
                child: Text("Are You Sure",style: TextStyle(color: Colors.grey,fontSize: 20),),
              ),
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Container(
                          margin: EdgeInsets.only(top: 10.h,left: 15.w),
                          height: 5.h,
                          width: 35.w,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: Text(
                              'Cancel',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              primary: Colors.blue,
                              onPrimary: Colors.blue,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Profile_Edit()));
                            },
                          )),
                    ),
                    Container(
                      child: Container(
                          margin: EdgeInsets.only(top: 10.h),
                          height: 5.h,
                          width: 35.w,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: Text(
                              'Yes',
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                              primary: Colors.red,
                              onPrimary: Colors.red,
                            ),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Log_In()));
                            },
                          )),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
