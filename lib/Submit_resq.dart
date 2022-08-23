import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'Maps.dart';

class Submit_resq extends StatefulWidget {
  const Submit_resq({Key? key}) : super(key: key);

  @override
  _Submit_resqState createState() => _Submit_resqState();
}

TextEditingController nameController = TextEditingController();
TextEditingController passController = TextEditingController();

class _Submit_resqState extends State<Submit_resq> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Post New Request',
            style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.grey,
          ),
        ),
        body: Container(
          child: ListView(
            children: [
              Container(
                child: Stack(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                              margin: EdgeInsets.only(top: 5.h, left: 5.w),
                              child: Text("Location Name")),
                          Container(
                              margin: EdgeInsets.only(top: 25.h, left: 5.w),
                              child: Text("Add Image")),
                          Container(
                              margin: EdgeInsets.only(top: 40.h, left: 5.w),
                              child: Text("Issue Details")),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 7.h, left: 2.w),
                      width: 100.w,
                      padding: const EdgeInsets.all(10),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          labelText: 'Location Name ',
                        ),
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 18.h, left: 2.w),
                                  width: 100.w,
                                  padding: const EdgeInsets.all(10),
                                  child: TextFormField(
                                    controller: passController,
                                    decoration: InputDecoration(
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                      labelText: 'Selected category ',
                                    ),
                                  ),
                                ),
                                Container(
                                  margin:
                                      EdgeInsets.only(top: 21.5.h, left: 85.w),
                                  child: Icon(Icons.arrow_drop_down),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 55.h, left: 14.w),
                            height: 15.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: Center(
                                child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 55.h, left: 2.w),
                            height: 15.h,
                            width: 35.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: Center(
                                child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 38.h, left: 14.w),
                            height: 15.h,
                            width: 34.5.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: Center(
                                child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            )),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 38.h, left: 2.w),
                            height: 15.h,
                            width: 36.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                            child: Center(
                                child: Text(
                              '+',
                              style:
                                  TextStyle(fontSize: 30, color: Colors.grey),
                            )),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            margin: EdgeInsets.only(top: 80.h, left: 12.w),
                            height: 18.h,
                            width: 80.w,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.grey, width: 1)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 105.h, left: 15.w),
                        height: 7.h,
                        width: 70.w,
                        padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: ElevatedButton(
                          child: const Text(
                            'Submit Request',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onPressed: () {
                            print(nameController.text);
                            print(passController.text);
                          },
                        )),
                    Container(
                      height: 120.h,
                    ),
                    Container(
                      height: 70.h,
                      child: AlertDialog(
                        title: Text("Your Resquest Has been \n      Sucessfully Submit"),
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
                                          'Back To Home Page',
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
                                                  builder: (context) => Maps()));
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
              ),
            ],
          ),
        ));
  }
}
