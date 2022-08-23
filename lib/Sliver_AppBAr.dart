import 'package:carousel_slider/carousel_slider.dart';
import 'package:csc_picker/csc_picker.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:table_calendar/table_calendar.dart';
class Siver_AppBar extends StatefulWidget {
  const Siver_AppBar({Key? key}) : super(key: key);

  @override
  _Siver_AppBarState createState() => _Siver_AppBarState();
}

final urlImage1 = [
  'https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
      'https://images.unsplash.com/photo-1503376780353-7e6692767b70?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8Y2Fyc3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'
      "https://images.unsplash.com/photo-1605559424843-9e4c228bf1c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
];

class _Siver_AppBarState extends State<Siver_AppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Icon(Icons.menu),
            actions: [
              Container(
                margin: EdgeInsets.only(top: 2.5.h, right: 3.w),
                child: Text('Clear All'),
              )
            ],
            pinned: true,
            expandedHeight: 25.h,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('Hello World'),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Container(
              margin: EdgeInsets.only(top: 10.h),
              child: Center(
                child: CarouselSlider.builder(
                    itemCount: urlImage1.length,
                    options: CarouselOptions(
                        height: 40.h,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 2),
                        enlargeCenterPage: true,
                        enlargeStrategy: CenterPageEnlargeStrategy.height,
                        ),
                    itemBuilder: (context, index, realIndex) {
                      final urlImage = urlImage1[index];
                      return buildImage(urlImage, index);
                    }),
              ),
            ),
            SizedBox(
              height: 10.h,
            ),
            CSCPicker(
              layout: Layout.vertical,
              searchBarRadius: 15,
              onCountryChanged: (country) {},
              onStateChanged: (state) {},
              onCityChanged: (city) {},
            ),
            SizedBox(
              height: 10.h,
            ),

                TableCalendar(

                  focusedDay:DateTime.now(),
                  firstDay: DateTime.utc(2022, 1, 1),
                  lastDay: DateTime.utc(2050, 1, 1),
                  calendarFormat: CalendarFormat.month,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    rightChevronIcon: Icon(
                      Icons.chevron_right,
                      size: 16,
                      color: Colors.grey,
                    ),
                    leftChevronIcon: Icon(
                      Icons.chevron_left,
                      size: 16,
                      color: Colors.grey,
                    ),
                  ),
                  
                ),

          ])),

        ],
      ),
    );
  }
}

Widget buildImage(String urlImage1, int index) => Container(
      margin: EdgeInsets.symmetric(horizontal: 1.w),
      color: Color(0xFFF5F1F1),
      child: Image.network(
        urlImage1,
        fit: BoxFit.fill,
      ),
    );
