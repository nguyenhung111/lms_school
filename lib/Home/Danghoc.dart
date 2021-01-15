import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Container builDanghoc(Size size) {
  return Container(
    height: 170,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: <Widget>[
        container(size, 'H2 + O2 => HOHO?\nCông thức huyền thoại\nnày đúng hay sai?','Hóa Học'),
        container(size, 'H2 + O2 => HOHO?\nCông thức huyền thoại\nnày đúng hay sai?','Hóa Học'),
      ],
    ),
  );
}

Container container(Size size, String text, String mon) {
  return Container(
        alignment: AlignmentDirectional.center,
        width: size.width * 0.92,
        margin: EdgeInsets.fromLTRB(
            size.width*0.05, 10, 0, 0),
        height: 150,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                style: BorderStyle.solid,
                color: Colors.grey[100],
                width: 10)),
        child: Container(
          // margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
          child: Row(
            children: <Widget>[
              Container(
                height: 120,
                width: size.width * 0.45,
                child: Image(
                  image: AssetImage('asset/image/hoahoc.png'),
                ),
              ),
              Container(
                height: 120,
                width: size.width * 0.4,
                child: Column(
                  children: <Widget>[
                    Text('$text',
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.black,
                          height: 1.5),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        alignment: AlignmentDirectional.bottomStart,
                        child: Row(
                          children: <Widget>[
                            Text(
                              '$mon',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xffBB2634)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}