import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:lms_school_v2/Lichhoc/Lichhoc.dart';
import 'package:lms_school_v2/appBar/BottomNavigationBar.dart';

import 'Bangtin.dart';
import 'Danghoc.dart';
import 'HelloPage.dart';
import 'khoahoc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              HelloPage(size: size),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 5,
                color: Colors.grey[100],
              ),
              Container(
                //  margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
                width: size.width * 1,
                height: 250,
                child: GridView.count(
                  primary: false,
                  crossAxisCount: 3,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: openLichhoc,
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xFFFFE4E0)),
                            child: Icon(Icons.date_range,
                                size: 30, color: Color(0xffBB2634)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Lịch học tập',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xfff3e5f5)),
                            child: Icon(Icons.cast_for_education,
                                size: 30, color: Color(0xffC32C6D)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Khóa học của tôi',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xfff3e5f5)),
                            child: Icon(
                              Icons.lightbulb_outline,
                              size: 30,
                              color: Color(0xff833B78),
                            ),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Cuộc thi của tôi',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff000000)),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffd7ccc8)),
                            child: Icon(Icons.subtitles_outlined,
                                size: 30, color: Color(0xff57477D)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Tin tức',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          child: Container(
                            alignment: Alignment.center,
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffcfd8dc)),
                            child: Icon(Icons.stars_outlined,
                                size: 30, color: Color(0xff2F4858)),
                          ),
                        ),
                        SizedBox(height: 10),
                        Text('Sự kiện',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xff000000))),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                height: 5,
                color: Colors.grey[100],
              ),
              Container(
                width: size.width * 1,
                height: 28,
                margin: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Text(
                  "Đang học",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                ),
              ),
              builDanghoc(size),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 28,
                width: size.width * 1,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Khóa học mới nhất",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: size.width*0.45,
                      alignment: AlignmentDirectional.centerEnd,
                      height: 28,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          InkWell(
                            child: Text("Tất cả",
                                style: TextStyle(
                                    fontSize: 15,
                                    color: Colors.red,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.right),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              buildKhoahoc(size),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 28,
                width: size.width * 1,
                margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Row(
                  children: <Widget>[
                    Text(
                      "Bảng tin",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              buildBangtin(size),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  void openLichhoc() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Lichhoc()));
  }
}
