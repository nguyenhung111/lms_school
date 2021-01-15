import 'package:flutter/material.dart';
  AppBar buildAppBar(BuildContext context, String title) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      iconTheme: new IconThemeData(color: Colors.black),
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios),
        onPressed: () {
          Navigator.of(context).pop();
        },
      ),
      title: Text(
        "$title",
        style: TextStyle(color: Colors.black),
      ),
    );
  }

