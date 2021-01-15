import 'package:flutter/material.dart';
Container buildBangtin(Size size) {
  return Container(
    margin: EdgeInsets.fromLTRB(
        size.width * 0.05, 10, size.width * 0.05, 20),
    child: Column(
      children: <Widget>[
        SizedBox(height: 25),
        container(),
        SizedBox(height: 25),
        container(),
        SizedBox(height: 25),
        container(),
        SizedBox(height: 25),
        container(),
      ],
    ),
  );
}

Container container() {
  return Container(
        height: 100,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Color(0xffFFE4E0),
        ),
        child: Row(
          children: <Widget>[
            Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Color(0xffE04A4F),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      '24/01',
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'năm 2021',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ],
                )),
            SizedBox(width: 10),
            Expanded(
                child: Container(
                  child: Text(
                    'Sửa tập huấn giáo viên theo chương trình mới bằng trực tuyến',
                    style: TextStyle(
                        fontSize: 16,
                        color: Color(0xffBB2634),
                        height: 1.5),
                  ),
                ))
          ],
        ),
      );
}