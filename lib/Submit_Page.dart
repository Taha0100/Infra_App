import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Submit_Page extends StatefulWidget {
  const Submit_Page({Key? key}) : super(key: key);

  @override
  _Submit_PageState createState() => _Submit_PageState();
}

class _Submit_PageState extends State<Submit_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Submitted Request',
          style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        leading: Icon(
          Icons.arrow_back,
          color: Colors.grey,
        ),
      ),
      body: Container(
        margin: EdgeInsets.only(top: 3.h,left: 2.5.w
        ),
        height: 17.h,
        width: 95.w,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 1
            )
          ],
            color: Color(0xFFFFFFFF), borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 1.5.h,left: 5.w),
                    child: Text('Jan 01, 2020',style: TextStyle(color: Colors.grey),),
                  ),
                  Container(
                    child: Container(
                        margin: EdgeInsets.only(left: 30.w,top: 1.5.h),
                        height: 4.h,
                        width: 35.w,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: Text(
                            'Approved',
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

                          },
                        )),
                  ),
                ],
              ),
            ),
            Divider(
              height: 4.h,
              color: Colors.grey,
              thickness: 0.5,
              indent: 5.w,
              endIndent: 7.w,
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 5.w),
                    width: 15.w,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: Image.asset('Asset/3042.jpg'),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 3.w),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 29.w),
                          child: Text("Roads",style: TextStyle(color: Colors.grey),),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        Text("Fix road it has pot holes",style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5.w),
                    child: Row(
                      children: [
                        Text('123456m',style: TextStyle(fontSize: 12),),
                        Icon(Icons.location_on,color: Colors.blue,)
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
