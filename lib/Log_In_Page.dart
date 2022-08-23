import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Forget_Pass_Page.dart';
import 'Sign_Up_Page.dart';

class Log_In extends StatefulWidget {
  const Log_In({Key? key}) : super(key: key);

  @override
  _Log_InState createState() => _Log_InState();
}

TextEditingController nameController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _Log_InState extends State<Log_In> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 7.h, left: 38.w),
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
                  margin: EdgeInsets.only(top: 14.h, left: 14.w),
                  child: Text(
                    'Brought to you by Empowering Us carribean',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.w300),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20.h, left: 5.w),
                    child: Text("Email")),
                Container(
                  margin: EdgeInsets.only(top: 22.h, left: 15),
                  child: Column(
                    children: [
                      Container(
                        padding: EdgeInsets.all(10),
                        child: TextFormField(
                          controller: nameController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            prefixIcon: Icon(Icons.mail),
                            labelText: 'example@gmail.com',
                          ),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 77.w),
                          child: Text("Passward")),
                      Container(
                        padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: TextFormField(
                          obscureText: true,
                          controller: passwordController,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                            labelText: 'Password',
                            prefixIcon: Icon(Icons.lock),
                          ),
                          style: TextStyle(color: Colors.grey),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 50.w, top: 3.h),
                        child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        Forget_Pass_Page())); //forgot password screen
                          },
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      ),
                      Container(
                          height: 7.h,
                          width: 85.w,
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: ElevatedButton(
                            child: const Text('Log In'),
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12),
                              ),
                            ),
                            onPressed: () {
                              print(nameController.text);
                              print(passwordController.text);
                            },
                          )),
                      SizedBox(
                        height: 1.5.h,
                      ),
                      Row(
                        children: <Widget>[
                          Text('Does not have account?',
                              style:
                                  TextStyle(fontSize: 14, color: Colors.grey)),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sign_Up()));
                              },
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                    fontSize: 17,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.bold),
                              )),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 68.h),
                  child: Divider(
                    height: 0.5.h,
                    color: Colors.black,
                    thickness: 0.5,
                    indent: 30,
                    endIndent: 30,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 72.h, left: 10.w),
                  height: 6.5.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        child: Row(
                          children: [
                            Image.asset('Asset/1.png'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.w),
                        child: Row(
                          children: [
                            Text(
                              "Continue With Google",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 81.h, left: 10.w),
                  height: 6.5.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 3.w),
                        child: Row(
                          children: [
                            Image.asset('Asset/2.png'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 3.w),
                        child: Row(
                          children: [
                            Text(
                              "Continue With FaceBook",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 90.h, left: 10.w),
                  height: 6.5.h,
                  width: 80.w,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 1.w),
                        child: Row(
                          children: [
                            Image.asset('Asset/3.png'),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 14.w),
                        child: Row(
                          children: [
                            Text(
                              "Continue With Apple",
                              style:
                                  TextStyle(fontSize: 22, color: Colors.grey),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
