import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelloPage extends StatelessWidget {
  const HelloPage({
    Key key,
    @required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      width: size.width * 1,
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    width: 146,
                    height: 27,
                    child: Text(
                      "Xin chào,",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    width: 146,
                    height: 28,
                    child: Text(
                      "Phương Thảo",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: size.width * 0.1,
              ),
              Container(
                margin: EdgeInsets.fromLTRB(size.height * 0.045, 0, 0, 0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.notifications),
                ),
              ),
              Container(
                width: 56,
                child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('asset/image/thao2.png')),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Image(
            image: AssetImage('asset/image/hoang.png'),
          )
        ],
      ),
    );
  }
}
