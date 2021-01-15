import 'package:flutter/material.dart';
import 'package:lms_school_v2/login/Dangnhap.dart';
import 'package:lms_school_v2/login/ResetPassword.dart';

class Sendmail extends StatefulWidget {
  @override
  _SendmailState createState() => _SendmailState();
}

class _SendmailState extends State<Sendmail> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: new IconThemeData(color: Colors.black),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Container(
        width: size.width * 0.9,
        margin:
            EdgeInsets.fromLTRB(size.width * 0.05, 30, size.width * 0.05, 0),
        child: Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFE4E0)),
              child: Icon(Icons.email_outlined,
                  size: 60, color: Color(0xffBB2634)),
            ),
            Container(
              alignment: AlignmentDirectional.center,
              width: size.width * 0.65,
              height: 80,
              child: Text(
                'Kiểm tra hòm thư của bạn',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              alignment: AlignmentDirectional.center,
              width: size.width * 0.85,
              height: 60,
              child: Text(
                  'Chúng tôi đã gửi hưỡng dẫn thay đổi mật khẩu vào email của bạn',
                  style: TextStyle(fontSize: 16.0, color: Colors.black87),
                  textAlign: TextAlign.center),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: openUpdate,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: size.width * 0.4,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffBB2634),
                    ),
                    child: Text(
                      'Gửi lại',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: openMainPage,
                  child: Text(
                    'Thử lại sau',
                    style: TextStyle(fontSize: 18.0, color: Colors.black45),
                  ),
                ),
              ],
            ),
            Expanded(
                child: Container(
              alignment: AlignmentDirectional.center,
              width: size.width * 0.9,
              height: 50,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    'Không nhận được email? Kiểm tra hòm thư spam',
                    style: TextStyle(fontSize: 16.0, color: Colors.black87),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text('của bạn hoặc ',
                          style:
                              TextStyle(fontSize: 16.0, color: Colors.black87)),
                      InkWell(
                        onTap: sendmail,
                        child: Text('Thử lại với email khác',
                            style: TextStyle(
                                fontSize: 16.0,
                                fontWeight: FontWeight.bold,
                                color: Color(0xffBB2634))),
                      ),
                    ],
                  )
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }

  void openMainPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Dangnhap()),
    );
  }

  void openUpdate() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Updatematkhau()),
    );
  }

  void sendmail() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Reset()));
  }
}
