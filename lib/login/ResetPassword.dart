import 'package:flutter/material.dart';
import 'package:lms_school_v2/appBar/appbar.dart';

import 'Dangnhap.dart';
import 'sendmail.dart';

class Reset extends StatefulWidget {
  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context,""),
      body: Container(
        margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
        child: new Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  ("Khôi phục mật khẩu"),
                  style: TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold, height: 2),
                ),
              ],
            ),
            Text(
              "Vui lòng nhập email của bạn để tiến hành khôi phục mật khẩu:",
              style: TextStyle(
                  fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.red),
                decoration: InputDecoration(
                    hintText: "example@mail.com",
                    prefixIcon: Icon(
                      Icons.person_outline,
                      color: Colors.red,
                    )),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: openMainPage,
                  child: Container(
                    width: size.width * 0.77,
                    height: 44,
                    margin: EdgeInsets.only(top: 30, left: 0),
                    padding: EdgeInsets.fromLTRB(120, 12, 10, 12),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color(0xFFBB2634)),
                    child: Text(
                      'Gửi email',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  void openMainPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Sendmail()),
    );
  }
}

class Updatematkhau extends StatefulWidget {
  @override
  _UpdatematkhauState createState() => _UpdatematkhauState();
}

class _UpdatematkhauState extends State<Updatematkhau> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context,""),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
          child: new Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    ("Cập nhật mật khẩu"),
                    style: TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold, height: 2),
                  ),
                ],
              ),
              Text(
                "Mật khẩu mới của bạn cần khác so với mật khẩu cũ",
                style: TextStyle(
                    fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.red),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Mật khẩu mới",
                    prefixIcon: Icon(Icons.https_outlined, color: Colors.red),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                child: TextField(
                  style: TextStyle(fontSize: 18, color: Colors.red),
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Nhập lại mật khẩu",
                    prefixIcon: Icon(Icons.https_outlined, color: Colors.red),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.visibility),
                      onPressed: () {},
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Mật khẩu phải trùng khớp",
                    style: TextStyle(
                        fontSize: 16, fontWeight: FontWeight.w400, height: 1.5),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: openUpdate,
                    child: Container(
                      width: size.width * 0.75,
                      height: 44,
                      margin: EdgeInsets.only(top: 30, left: 0),
                      padding: EdgeInsets.fromLTRB(
                          size.width * 0.75 / 2.5, 12, 10, 12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color(0xFFBB2634)),
                      child: Text(
                        'Cập nhật',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
  void openUpdate() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Update()),
    );
  }
}
class Update extends StatefulWidget {
  @override
  _SendmailState createState() => _SendmailState();
}

class _SendmailState extends State<Update> {

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
        margin: EdgeInsets.fromLTRB(size.width*0.05, 30, size.width*0.05, 0),
        child:  Column(
          children: <Widget>[
            Container(
              width: 120,
              height: 120,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Color(0xffFFE4E0)),
              child: Icon(Icons.https,
                  size: 60, color: Color(0xffBB2634)),
            ),
            Container(
              alignment: AlignmentDirectional.center,
              width: size.width*0.65,
              height: 80,
              child: Text(
                'Cập nhật mật khẩu thành công',
                style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: openMainPage,
                  child: Container(
                    alignment: AlignmentDirectional.center,
                    width: size.width*0.4,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color(0xffBB2634),
                    ),
                    child: Text(
                      'Đăng nhập',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),

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
}



