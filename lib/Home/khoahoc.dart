import 'package:flutter/material.dart';

Container buildKhoahoc(Size size) {
  return Container(
    width: size.width * 0.9,
    height: 330,
    child: new ListView(
      scrollDirection: Axis.horizontal,
      shrinkWrap: true,
      children: <Widget>[
        container(size,'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?', 'Hóa học', '4.5'),
        container(size,'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?', 'Hóa học', '4.5'),
      ],
    ),
  );
}

Container container(Size size, String text, String mon, String diem) {
  return Container(
        width: size.width * 0.8,
        margin: EdgeInsets.fromLTRB(0, 10, 5, 0),
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                style: BorderStyle.solid,
                color: Colors.grey[100],
                width: 10)),
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
          child: Column(
            children: <Widget>[
              Container(
                height: 190,
                width: size.width * 1,
                child: Image(
                  image: AssetImage('asset/image/hoahoc.png'),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(5, 0, 0, 0),
                width: size.width * 1,
                height: 55,
                child: Column(
                  children: <Widget>[
                    Text(
                      '$text',
                      style: TextStyle(
                          fontSize: 15, color: Colors.black, height: 1.5),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                height: 55,
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.bottomStart,
                      child: Text(
                        '$mon',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xffBB2634)),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Icon(
                              Icons.star,
                            ),
                            Text(
                              "$diem",
                              style: TextStyle(fontSize: 16),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  InkWell(
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 1),
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(20)),
                                          color: Colors.red),
                                      child: Row(
                                        children: <Widget>[
                                          Icon(
                                            Icons.alarm_on,
                                            color: Colors.white,
                                            size: 18,
                                          ),
                                          Text(
                                            '1:40 hr',
                                            style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
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
