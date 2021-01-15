import 'package:flutter/material.dart';

import 'instruction/MainPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
      routes: {
        '/MainPage': (context) => Home(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFFFFFFFF),
      body: Column(
        children: [
          Container(
            width: 220,
            height: 207,
            margin: EdgeInsets.only(left: 77, top: 125, right: 78, bottom: 20),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/image/Frame.png'))),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "XIN CHÀO !",
            style: TextStyle(
                fontSize: 24, color: Colors.black, fontWeight: FontWeight.w900),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Giúp bạn phát triển sự nghiệp và hoàn thiện kiến \n thức của bản thân với hàng ngàn khóa học Online. \n Học mọi lúc, mọi nơi",
            style: TextStyle(
              height:2 ,
              fontSize: 13,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: openMainPage,
                child: Container(
                  margin: EdgeInsets.only(top: 20),
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.35, vertical: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xFFBB2634) ),
                  child: Text(
                    'Bắt đầu',
                    style: TextStyle(
                      fontSize: 17,
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
          Text(
            "Liên hệ giáo viên phụ trách để được cấp\n tài khoản đăng nhập",
            style: TextStyle(
              height: 1.5,
              fontSize: 12,
              color: Colors.black,
              fontWeight: FontWeight.w400,
            ),
            maxLines: 2,
            textAlign: TextAlign.center,
          ),
        ],
      ),

    );
  }

  void openMainPage() {
    Navigator.pushNamed(context, '/MainPage');
  }
}
