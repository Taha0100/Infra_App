import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

import 'Maps.dart';
import 'PostNewResquest.dart';

class Issue extends StatefulWidget {
  const Issue({Key? key}) : super(key: key);

  @override
  _IssueState createState() => _IssueState();
}

class _IssueState extends State<Issue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('Asset/loca.png'),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.menu,
            color: Colors.grey,
          ),
          actions: [
            Icon(
              Icons.textsms_outlined,
              color: Colors.grey,
            ),
            SizedBox(
              width: 3.w,
            ),
          ],
        ),
        body: Container(
          child: Stack(
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                child: Image.asset(
                  'Asset/Maps.png',
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 3.h, left: 8.w),
                height: 5.h,
                width: 85.w,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 1,
                        blurRadius: 2,
                      )
                    ]),
                child: Container(
                  padding: EdgeInsets.only(left: 70.w),
                  child: Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
              Container(
                child: AlertDialog(
                  title: Text("Add Issue Here"),
                  actions: <Widget>[
                    Positioned(
                        child: Container(
                      child: Image.asset('Asset/Maps.png'),
                    )),
                    SizedBox(
                      height: 1.h,
                    ),
                    Container(
                      child: Text(
                        '     Are you sure to add an issue here?\nA marker will be added with issue details',
                        style: TextStyle(fontWeight: FontWeight.w300),
                      ),
                    ),
                    SizedBox(
                      height: 2.h,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            child: Container(
                                margin: EdgeInsets.only(left: 2.w),
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
                                    primary: Colors.red,
                                    onPrimary: Colors.red,
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Maps()));
                                  },
                                )),
                          ),
                          Container(
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
                                  primary: Colors.blue,
                                  onPrimary: Colors.blue,
                                ),
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Post_New_resquest()));
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
        ));
  }
}
