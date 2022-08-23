import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'Issue.dart';
import 'Profile_Edit.dart';

class Maps extends StatefulWidget {
  const Maps({Key? key}) : super(key: key);

  @override
  _MapsState createState() => _MapsState();
}

TextEditingController nameController = TextEditingController();

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('Asset/loca.png'),
          centerTitle: true,
          backgroundColor: Color(0xFFFFFFFF),
          leading: Icon(Icons.menu,color: Colors.grey,),
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
                  margin: EdgeInsets.only(top: 40.h, left: 80.w),
                  height: 7.h,
                  width: 20.w,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Icon(Icons.arrow_forward_outlined),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Issue()));
                      print(nameController.text);
                    },
                  )),
              Container(
                  margin: EdgeInsets.only(top: 10.h, left: 10.w),
                  height: 7.h,
                  width: 20.w,
                  padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: ElevatedButton(
                    child: Icon(Icons.menu),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      primary: Colors.white,
                      onPrimary: Colors.blue,
                    ),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Profile_Edit()));
                      print(nameController.text);
                    },
                  )),
            ],
          ),
        ));
  }
}
