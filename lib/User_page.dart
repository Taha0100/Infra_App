import 'package:flutter/material.dart';
import 'package:infra_app/Leader.dart';
import 'package:infra_app/Sign_Up_Page.dart';
import 'package:sizer/sizer.dart';

import 'Log_In_Page.dart';

class Council_page extends StatefulWidget {
  const Council_page({Key? key}) : super(key: key);

  @override
  _Council_pageState createState() => _Council_pageState();
}

TextEditingController nameController = TextEditingController();
TextEditingController secController = TextEditingController();
TextEditingController passwordController = TextEditingController();
TextEditingController emailController = TextEditingController();

class _Council_pageState extends State<Council_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: ListView(
          children: [
            Container(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 4.h, left: 38.w),
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
                    margin: EdgeInsets.only(top: 12.h, left: 14.w),
                    child: Text(
                      'Brought to you by Empowering Us carribean',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.w300),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 18.h, left: 5.w),
                      child: Text("User Name")),
                  Container(
                      margin: EdgeInsets.only(top: 31.h, left: 5.w),
                      child: Text("Email")),
                  Container(
                      margin: EdgeInsets.only(top: 44.h, left: 5.w),
                      child: Text("Password")),
                  Container(
                      margin: EdgeInsets.only(top: 18.h, left: 50.w),
                      child: Text("Full Name")),
                  Container(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 20.h, left: 4.w),
                          width: 40.w,
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: 'First Name ',
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20.h, left: 10.w),
                          width: 40.w,
                          padding: const EdgeInsets.all(10),
                          child: TextFormField(
                            controller: secController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              labelText: ' Last Name ',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 33.h),
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'example@gmail.com',
                        prefixIcon: Icon(Icons.mail),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 45.5.h),
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: TextFormField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        labelText: 'Password',
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        Container(
                            height: 7.h,
                            width: 40.w,
                            margin: EdgeInsets.only(top: 57.h, left: 7.w),
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Leader'),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: () {
                                print(nameController.text);
                                print(passwordController.text);
                                print(emailController.text);
                                print(secController.text);
                              },
                            )),
                        Container(
                            height: 7.h,
                            width: 40.w,
                            margin: EdgeInsets.only(top: 57.h, left: 7.w),
                            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                            child: ElevatedButton(
                              child: const Text('Reular'),
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                primary: Colors.white,
                                onPrimary: Colors.blue,
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Sign_Up()));
                                print(nameController.text);
                                print(passwordController.text);
                                print(emailController.text);
                                print(secController.text);
                              },
                            )),
                      ],
                    ),
                  ),
                  Container(
                      height: 7.h,
                      width: 85.w,
                      margin: EdgeInsets.only(top: 70.h, left: 7.w),
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        child: const Text('Log In'),
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Leader(git)));
                          print(nameController.text);
                          print(passwordController.text);
                          print(emailController.text);
                          print(secController.text);
                        },
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 77.h, left: 17.w),
                    child: Row(
                      children: [
                        Row(
                          children: <Widget>[
                            Text('Already have an account?',
                                style: TextStyle(
                                    fontSize: 14, color: Colors.grey)),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Log_In()));
                                },
                                child: const Text(
                                  'Log In',
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.grey,
                                      fontWeight: FontWeight.bold),
                                )),
                          ],
                          mainAxisAlignment: MainAxisAlignment.center,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 83.h),
                    child: Divider(
                      height: 0.5.h,
                      color: Colors.black,
                      thickness: 0.5,
                      indent: 30,
                      endIndent: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 86.h, left: 10.w),
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
                    margin: EdgeInsets.only(top: 96.h, left: 10.w),
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
                    margin: EdgeInsets.only(top: 105.h, left: 10.w),
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
            )
          ],
        ),
      ),
    );
  }
}
