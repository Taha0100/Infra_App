import 'package:flutter/material.dart';
import 'package:infra_app/otp.dart';
import 'package:sizer/sizer.dart';

class Forget_Pass_Page extends StatefulWidget {
  const Forget_Pass_Page({Key? key}) : super(key: key);

  @override
  _Forget_Pass_PageState createState() => _Forget_Pass_PageState();
}

TextEditingController nameController = TextEditingController();

class _Forget_Pass_PageState extends State<Forget_Pass_Page> {
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
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
                  margin: EdgeInsets.only(top: 28.h, left: 7.w),
                  child: Text("Email")),
              Container(
                margin: EdgeInsets.only(top: 30.h, left: 15),
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
                  margin: EdgeInsets.only(top: 58.h, left: 5.5.w),
                  height: 7.h,
                  width: 90.w,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: const Text(
                      'Send  Verification  Code',
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
                          MaterialPageRoute(builder: (context) => Otp_Page()));
                      print(nameController.text);
                    },
                  )),
            ],
          ),
        ],
      )),
    );
  }
}
