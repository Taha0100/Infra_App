import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Notification_page extends StatefulWidget {
  const Notification_page({Key? key}) : super(key: key);

  @override
  _Notification_pageState createState() => _Notification_pageState();
}

class _Notification_pageState extends State<Notification_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Notification",
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
      ),
      body: Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(left: 2.5.w,top: 3.h),
              height: 22.h,
              width: 95.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1)
                  ],
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 2.5.w,top: 2.h),
                    child: Text(
                      'Complaint: Road need to be fixed',
                      style: TextStyle(color: Colors.blue,fontSize: 17),
                    ),
                  ),
                  Divider(
                    height: 2.5.h,
                    color: Colors.grey,
                    thickness: 0.5,
                    indent: 5.w,
                    endIndent: 5.w,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 6.w,top: 1.h),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_left,color: Colors.grey,),
                              Text('Thanks for your time! Your complaint has\n been fixed.',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 6.w,top: 2.h),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_left,color: Colors.grey,),
                              Text('You are welcome',style: TextStyle(color: Colors.blue),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 2.5.w,top: 3.h),
              height: 22.h,
              width: 95.w,
              decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 1)
                  ],
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 2.5.w,top: 2.h),
                    child: Text(
                      'Complaint: Bridge need to be fixed',
                      style: TextStyle(color: Colors.grey,fontSize: 17),
                    ),
                  ),
                  Divider(
                    height: 2.5.h,
                    color: Colors.grey,
                    thickness: 0.5,
                    indent: 5.w,
                    endIndent: 5.w,
                  ),
                  Container(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 6.w,top: 1.h),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_left,color: Colors.grey,),
                              Text('Thanks for your time! Your complaint has\n been fixed.',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 6.w,top: 2.h),
                          child: Row(
                            children: [
                              Icon(Icons.arrow_left,color: Colors.grey,),
                              Text('You are welcome',style: TextStyle(color: Colors.grey),)
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
