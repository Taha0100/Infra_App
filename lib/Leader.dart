import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Leader extends StatefulWidget {
  const Leader({Key? key}) : super(key: key);

  @override
  _LeaderState createState() => _LeaderState();
}

class _LeaderState extends State<Leader> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                  child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5.h),
                    height: 6.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2.5,
                            blurRadius: 2.5)
                      ],
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: 3.5.w),
                                width: 12.w,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Image.asset('Asset/Taha.jpg'),
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.w),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: Colors.blue,
                                      size: 29,
                                    ),
                                    Text(
                                      "Infra",
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600,
                                          fontSize: 20),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: 20.w),
                                child: Icon(
                                  Icons.notifications_none,
                                  color: Colors.grey,
                                  size: 28,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 15.h, left: 1.w),
                    height: 80.5.h,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(16)),
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 0.5),
                            borderRadius: BorderRadius.circular(16)),
                        child: Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: Colors.white,
                              ),
                              height: 4.h,
                              width: 94.5.w,
                              child: TabBar(
                                indicator: BoxDecoration(
                                  color:Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                unselectedLabelColor: Colors.blue,
                                tabs: [
                                  Tab(
                                    text: 'Pending',
                                  ),
                                  Tab(
                                    text: 'New',
                                  ),
                                  Tab(
                                    text: 'Approve',
                                  ),
                                  Tab(
                                    text: 'Reject',
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Expanded(
                            child: TabBarView(
                          children: [
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 5.h, left: 5.w),
                                    child: Text(
                                      'Complains 1.....',
                                      style: TextStyle(
                                          color: CupertinoColors.systemGrey),
                                    ),
                                  ),
                                  Divider(
                                    height: 17.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10.h, left: 5.w),
                                    child: Text(
                                      'Complains 2.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 25.5.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 14.h, left: 5.w),
                                    child: Text(
                                      'Complains 3.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 35.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 19.h, left: 5.w),
                                    child: Text(
                                      'Complains 4.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 45.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 5.h, left: 5.w),
                                    child: Text(
                                      'Complains 1.....',
                                      style: TextStyle(
                                          color: CupertinoColors.systemGrey),
                                    ),
                                  ),
                                  Divider(
                                    height: 17.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10.h, left: 5.w),
                                    child: Text(
                                      'Complains 2.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 25.5.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 14.h, left: 5.w),
                                    child: Text(
                                      'Complains 3.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 35.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 19.h, left: 5.w),
                                    child: Text(
                                      'Complains 4.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 45.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 5.h, left: 5.w),
                                    child: Text(
                                      'Complains 1.....',
                                      style: TextStyle(
                                          color: CupertinoColors.systemGrey),
                                    ),
                                  ),
                                  Divider(
                                    height: 17.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10.h, left: 5.w),
                                    child: Text(
                                      'Complains 2.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 25.5.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 14.h, left: 5.w),
                                    child: Text(
                                      'Complains 3.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 35.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 19.h, left: 5.w),
                                    child: Text(
                                      'Complains 4.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 45.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              child: Stack(
                                children: [
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 5.h, left: 5.w),
                                    child: Text(
                                      'Complains 1.....',
                                      style: TextStyle(
                                          color: CupertinoColors.systemGrey),
                                    ),
                                  ),
                                  Divider(
                                    height: 17.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 10.h, left: 5.w),
                                    child: Text(
                                      'Complains 2.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 25.5.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 14.h, left: 5.w),
                                    child: Text(
                                      'Complains 3.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 35.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                  Container(
                                    margin:
                                        EdgeInsets.only(top: 19.h, left: 5.w),
                                    child: Text(
                                      'Complains 4.....',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ),
                                  Divider(
                                    height: 45.h,
                                    color: Colors.grey,
                                    indent: 20,
                                    endIndent: 20,
                                    thickness: 0.5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                      ),
                    ]),
                  ),
                ],
              ))
            ],
          ),
        ));
  }
}
