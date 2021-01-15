import 'package:flutter/material.dart';
import 'package:lms_school_v2/Home/HomePage.dart';
import 'package:lms_school_v2/appBar/appbar.dart';
import 'package:lms_school_v2/login/ResetPassword.dart';

class Dangnhap extends StatefulWidget {
  @override
  _DangnhapState createState() => _DangnhapState();
}

class _DangnhapState extends State<Dangnhap> {
  @override
  Widget build(BuildContext context) {
    // AppBar appBar;
    Size size = MediaQuery.of(context).size;
    // double screenHeight = size.height;
    // double abovePadding = MediaQuery.of(context).padding.top;
    // double appBarHeight = appBar.preferredSize.height;
    // double leftHeight = screenHeight - abovePadding - appBarHeight;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Đăng nhập"),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
                width: size.width * 1,
                height: 159,
                margin:
                    EdgeInsets.only(left: 55, top: 20, right: 47, bottom: 20),
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/image/Asset21.png')),
                )),
            SizedBox(
              height: 5,
            ),
            Container(
              width: size.width * 1,
              child: FlatButton(
                padding: EdgeInsets.fromLTRB(30, 5, 25, 10),
                onPressed: () => {},
                color: Colors.white,
                child: Image(
                  width: size.width * 1,
                  image: AssetImage('asset/image/Group10.png'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text("hoặc sử dụng tài khoản được cấp"),
            Container(
              width: size.width * 1,
              margin: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Column(
                children: <Widget>[
                  Container(
                    width: size.width * 1,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                          child: TextField(
                            style: TextStyle(fontSize: 18, color: Colors.red),
                            decoration: InputDecoration(
                                focusedBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(color: Colors.red),
                                ),
                                hintText: "example@mail.com",
                                prefixIcon: Icon(Icons.person_outline,
                                    color: Colors.red)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                          child: TextField(
                            style: TextStyle(fontSize: 18, color: Colors.red),
                            obscureText: true,
                            decoration: InputDecoration(
                              hintText: "Mật khẩu",
                              focusedBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                              ),
                              prefixIcon: Icon(
                                Icons.https_outlined,
                                color: Colors.red,
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(Icons.visibility),
                                onPressed: () {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: showDialogTruong,
                        child: Container(
                          width: size.width * 0.85,
                          height: 50,
                          margin: EdgeInsets.only(top: 30),
                          padding: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Color(0xFFBB2634)),
                          child: Text(
                            'Đăng nhập',
                            textAlign: TextAlign.center,
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
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      InkWell(
                        onTap: openReset,
                        child: Text(
                          "Quên mật khẩu tài khoản được cấp?",
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.red,
                              fontWeight: FontWeight.w600),
                        ),
                      )
                    ],
                  ),
                ],
              ),
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

  void openReset() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Reset()),
    );
  }

  void openHome() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }

  void showDialogTruong() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          Size size = MediaQuery.of(context).size;
          return AlertDialog(
            title: Row(
              children: <Widget>[
                Text('Chọn trường học',
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
                Container(
                  margin: EdgeInsets.fromLTRB(size.width * 0.2, 0, 0, 0),
                  child: IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {
                      setState(() {
                        Navigator.of(context).pop();
                      });
                    },
                  ),
                ),
              ],
            ),
            content: Container(
              width: size.width * 1,
              height: 300,
              child: ListView(
                children: <Widget>[
                  SizedBox(height: 10),
                  buildRow(size),
                  SizedBox(height: 15),
                  buildRow(size),
                  SizedBox(height: 15),
                  buildRow(size),
                ],
              ),
            ),
          );
        });
  }

  Row buildRow(Size size ) {
    return Row(
//                    mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        InkWell(
          onTap: openHome,
          child: Container(
//                            alignment: Alignment.topLeft,
              padding: EdgeInsets.fromLTRB(10, 8, 0, 8),
              width: size.width * 0.65,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              child: Column(
//                              mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'THPT Ân Thi 1',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  Row(
                    children: [
                      Text(
                        'nguyenhung@gmail.com',
                        style: TextStyle(color: Color(0xffBB2634)),
                      ),
                    ],
                  ),
                ],
              )),
        )
      ],
    );
  }
}
