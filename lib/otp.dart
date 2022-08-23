import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Log_In_Page.dart';

class Otp_Page extends StatefulWidget {
  const Otp_Page({Key? key}) : super(key: key);

  @override
  _Otp_PageState createState() => _Otp_PageState();
}
TextEditingController nameController = TextEditingController();
TextEditingController nameController1 = TextEditingController();
TextEditingController nameController2 = TextEditingController();
TextEditingController nameController3 = TextEditingController();
TextEditingController nameController4 = TextEditingController();
TextEditingController nameController5 = TextEditingController();
class _Otp_PageState extends State<Otp_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10.h, left: 38.w),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on_rounded,
                        color: Colors.blue,
                        size: 40,
                      ),
                      Text(
                        "Infra",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 18.h, left: 14.w),
                  child: Text(
                    'Brought to you by Empowering Us carribean',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 30.h,left: 9.w),
                  child: Text("Verification Code"),
                ),
                Container(
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 33.h, left: 10.w),
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: TextFormField(
                          controller: nameController,
                          onTap: (){
                            print(nameController.text);
                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 33.h, left: 4.w),
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: TextFormField(
                          controller: nameController,
                          onTap: (){

                            print(nameController1.text);

                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 33.h, left: 4.w),
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: TextFormField(
                          controller: nameController,
                          onTap: (){

                            print(nameController2.text);

                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 33.h, left: 4.w),
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: TextFormField(
                          controller: nameController,
                          onTap: (){

                            print(nameController3.text);

                          },
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 33.h, left: 4.w),
                        height: 4.h,
                        width: 8.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(color: Colors.black, width: 1)),
                        child: TextFormField(
                          controller: nameController,
                          onTap: (){

                            print(nameController4.text);

                          },
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 42.h, left: 7.w),
                    child: Text("Email")),
                Container(
                  margin: EdgeInsets.only(top: 44.h, left: 15),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(Icons.mail),
                          hintText: 'example@gmail.com',
                          labelText: 'Email',
                        ),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ]),
                ),
                Container(
                    margin: EdgeInsets.only(top: 55.h, left: 7.w),
                    child: Text("New Password")),
                Container(
                  margin: EdgeInsets.only(top: 57.5.h, left: 15),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'New Password',
                          labelText: 'Password',
                        ),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ]),
                ),
                Container(
                    margin: EdgeInsets.only(top: 67.5.h, left: 7.w),
                    child: Text("ReType New Password")),
                Container(
                  margin: EdgeInsets.only(top: 70.h, left: 15),
                  child: Column(children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          prefixIcon: Icon(Icons.lock),
                          hintText: 'Retype Password',
                          labelText: 'Password',
                        ),
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ]),
                ),
                Container(
                    margin: EdgeInsets.only(top: 84.h,left: 5.5.w),
                    height: 7.h,
                    width: 90.w,
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                    child: ElevatedButton(
                      child: const Text('Sign In',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Log_In()));
                        print(nameController.text);
                      },
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
