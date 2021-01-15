import 'package:flutter/material.dart';
import 'package:lms_school_v2/login/Dangnhap.dart';
import 'SliderModel.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<SliderModel> mySLides = new List<SliderModel>();
  int slideIndex = 0;
  PageController controller;

  Widget _buildPageIndicator(bool isCurrentPage) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 2.0),
      height: isCurrentPage ? 10.0 : 5.0,
      width: isCurrentPage ? 30 : 5,
      decoration: BoxDecoration(
        color: isCurrentPage ? Colors.red : Colors.grey[300],
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    mySLides = getSlides();
    controller = new PageController();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [const Color(0xff3C8CE7), const Color(0xff00EAFF)])),
        child: Scaffold(
          backgroundColor: Colors.white,
          body: Container(
            width:MediaQuery.of(context).size.width*1 ,
            height: MediaQuery.of(context).size.height * 1,
            child: PageView(
              controller: controller,
              onPageChanged: (index) {
                setState(() {
                  slideIndex = index;
                });
              },
              children: <Widget>[
                Column(
                  children:<Widget> [
                    SlideTile(
                      imagePath: mySLides[0].getImageAssetPath(),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Sử dụng tài khoản",
                          style: TextStyle(
                              height: 1.5,
                              fontSize: 13,
                              color: Colors.black,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          " vnEdu Connect",
                          style: TextStyle(
                              fontSize: 13,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                          textAlign: TextAlign.center,
                        ),
                        Text(" để đăng")
                      ],
                    ),
                    Text(
                      "nhập nếu như bạn đã có từ trước",
                      style: TextStyle(
                          height: 1.5,
                          fontSize: 13,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                Column(
                  children:<Widget> [
                    SlideTile(
                      imagePath: mySLides[1].getImageAssetPath(),
                    ),
                    const Text.rich(
                      TextSpan(
                        text:
                        'Hoặc liên hệ với giáo viên phụ trách để được \n\t\t\t\t\t\t\t\t\t\t\t\t cấp',
                        children: <TextSpan>[
                          TextSpan(
                              text: ' tài khoản ',
                              style: TextStyle(height: 1.5, color: Colors.red)),
                          TextSpan(text: ' và '),
                          TextSpan(
                              text: ' mật khẩu',
                              style: TextStyle(height: 1.5, color: Colors.red)),
                        ],
                        style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          bottomSheet: Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                slideIndex != 1
                    ? Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                controller.animateToPage(2,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.linear);
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Color(0xFFBB2634))),
                              color: Color(0xFFBB2634),
                              child: Text(
                                "Tiếp tục",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              child: Row(
                                children: [
                                  for (int i = 0; i < 2; i++)
                                    i == slideIndex
                                        ? _buildPageIndicator(true)
                                        : _buildPageIndicator(false),
                                ],
                              ),
                            ),
                          ],
                        ))
                    : Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        margin: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            FlatButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Dangnhap()));
                              },
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  side: BorderSide(color: Color(0xFFBB2634))),
                              color: Color(0xFFBB2634),
                              child: Text(
                                "Đăng nhập",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  MediaQuery.of(context).size.width * 0.55,
                                  0,
                                  0,
                                  0),
                              child: Row(
                                children: [
                                  for (int i = 0; i < 2; i++)
                                    i == slideIndex
                                        ? _buildPageIndicator(true)
                                        : _buildPageIndicator(false),
                                ],
                              ),
                            ),
                          ],
                        )),
              ],
            ),
          ),
        ));
  }
}

// ignore: must_be_immutable
class SlideTile extends StatelessWidget {
  String imagePath, desc;

  SlideTile({this.imagePath, this.desc});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 80),
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset(imagePath),
        ],
      ),
    );
  }
}
