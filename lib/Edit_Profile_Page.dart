import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Save_changing.dart';


class Edit_profile_Page extends StatefulWidget {
  const Edit_profile_Page({Key? key}) : super(key: key);

  @override
  _Edit_profile_PageState createState() => _Edit_profile_PageState();
}

TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController secController = TextEditingController();
class _Edit_profile_PageState extends State<Edit_profile_Page> {
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
                    margin: EdgeInsets.only(top: 29.h, left: 53.w),
                    width: 45.w,
                    height: 9.h,
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: passController,
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
                      controller:emailController,
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
                      controller:secController,
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
                          print(nameController.text);
                        },
                      )),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
