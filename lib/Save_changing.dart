import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Profile_Edit.dart';


class Change_Save extends StatefulWidget {
  const Change_Save({Key? key}) : super(key: key);

  @override
  _Change_SaveState createState() => _Change_SaveState();
}

class _Change_SaveState extends State<Change_Save> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Profile',style: TextStyle(color: Colors.grey),),
        centerTitle: true,
        leading: Icon(Icons.arrow_back,color: Colors.grey,),
      ),
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 32.w,top: 4.h),
                    height: 16.h,
                    width: 35.w,
                    child: ClipRRect(
                      borderRadius:BorderRadius.circular(100) ,
                      child: Image.asset('Asset/Taha.jpg',fit: BoxFit.fitHeight,),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 38.w,top: 22.h),
                    child: Text('Username',style: TextStyle(color: Colors.grey,fontSize: 18),),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27.h, left: 7.5.w),
                    child: Text('First Name'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 27.h, left: 56.w),
                    child: Text('Last Name'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 40.h, left: 9.w),
                    child: Text('Email'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 52.h, left: 9.w),
                    child: Text('Password'),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 29.h, left: 4.w),
                    width: 45.w,
                    height: 9.h,
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'First Name ',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 29.h, left: 53.w),
                    width: 45.w,
                    height: 9.h,
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Last Name ',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 42.h, left: 5.w),
                    width: 90.w,
                    height: 9.h,
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(

                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Email ',
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 54.h, left: 5.w),
                    width: 90.w,
                    height: 9.h,
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Password ',
                      ),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 75.h, left: 5.5.w),
                      height: 7.h,
                      width: 90.w,
                      padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text(
                          'Save Changes',
                          style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Change_Save()));
                        },
                      )),
                  Container(
                    width: 105.w,
                    height: 70.h,
                    child: AlertDialog(
                      title: Text("Your Profile Changes Has\nBeen Sucessfully Changed"),
                      actions: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 30.w),
                          child: Icon(Icons.check_circle_outline,color: Colors.green,size: 50,),
                        ),
                        SizedBox(
                          height: 1.h,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        Container(
                          child: Row(
                            children: [
                              Container(
                                child: Container(
                                    margin: EdgeInsets.only(left: 9.w),
                                    height: 5.h,
                                    width: 52.w,
                                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: ElevatedButton(
                                      child: Text(
                                        'Back To Profile',
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
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
