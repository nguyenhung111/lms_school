import 'package:flutter/material.dart';
import 'package:lms_school_v2/appBar/BottomNavigationBar.dart';
import 'package:lms_school_v2/appBar/appbar.dart';
import 'package:table_calendar/table_calendar.dart';

class Lichhoc extends StatefulWidget {
  @override
  _LichhocState createState() => _LichhocState();
}

class _LichhocState extends State<Lichhoc> {
  CalendarController _controller;

  @override
  void initState() {
    super.initState();
    _controller = CalendarController();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, "Lịch học tập"),
      body: Container(
        margin: EdgeInsets.fromLTRB(5, 0, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.fromLTRB(15, 20, 20, 0),
                child: Row(
                  children: [
                    Text(
                      "Thứ 5, ngày 10 tháng 12 năm 2020",
                      style:
                      TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {
                        // DatePicker.showDateTimePicker(context,
                        //     showTitleActions: true, onChanged: (date) {
                        //       print('change $date in time zone ' +
                        //           date.timeZoneOffset.inHours.toString());
                        //     }, onConfirm: (date) {
                        //       print('confirm $date');
                        //     }, currentTime: DateTime(2021, 12, 31, 23, 12, 34));
                      },
                      icon: Icon(
                        Icons.event,
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              buildTableCalendar(context),
              Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(color: Colors.white),
                child: Column(
                  children: [
                    Column(
                      children: [
                        dayTask("10:00 AM", "10:30 AM", "Môn hóa"),
                        dayTask("11:00 AM", "11:30 AM", "Môn hóa"),
                        dayTask("12:00 AM", "12:30 AM", "Môn vật lý"),
                        dayTask("13:00 AM", "13:30 AM", "Môn hóa"),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: buildBottomNavigationBar(),
    );
  }

  TableCalendar buildTableCalendar(BuildContext context) {
    return TableCalendar(
      initialCalendarFormat: CalendarFormat.week,
      headerVisible: false,
      // calendarStyle: CalendarStyle(
      //     todayColor: Colors.red,
      //     selectedColor: Theme.of(context).primaryColor,
      //     todayStyle: TextStyle(
      //         fontWeight: FontWeight.bold,
      //         fontSize: 22.0,
      //         color: Colors.white)),
      // headerStyle: HeaderStyle(
      //   centerHeaderTitle: true,
      //   formatButtonDecoration: BoxDecoration(
      //     color: Colors.brown,
      //     borderRadius: BorderRadius.circular(22.0),
      //   ),
      //   formatButtonTextStyle: TextStyle(color: Colors.white),
      //   formatButtonShowsNext: false,
      // ),
      startingDayOfWeek: StartingDayOfWeek.monday,
      builders: CalendarBuilders(
        dayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFFFEBE9),
                borderRadius: BorderRadius.circular(8.0)),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Color(0xFFBB2643)),
            )),
        selectedDayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFBB2643),
                borderRadius: BorderRadius.circular(8.0)),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Colors.white),
            )),
        todayDayBuilder: (context, date, events) => Container(
            margin: const EdgeInsets.all(5.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Color(0xFFBB2643),
                borderRadius: BorderRadius.circular(8.0)),
            child: Text(
              date.day.toString(),
              style: TextStyle(color: Colors.white),
            )),
      ),
      calendarController: _controller,
    );
  }
  Container dayTask(String time1, String time2, String name) {
    Size size = MediaQuery.of(context).size;
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  width: size.width * 0.18,
                  child: Text(
                    time1,
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Expanded(
                    child: Divider(
                      height: 2,
                      color: Colors.grey[500],
                    ))
              ],
            ),
          ),
          SizedBox(height: 5),
          Container(
              height: 170,
              child: Row(
                children: <Widget>[
                  Container(
                    width: size.width * 0.18,
                    child: Text(
                      time2,
                      style: TextStyle(
                        color: Colors.grey[500],
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.65,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: size.width * 0.65,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                   padding: EdgeInsets.fromLTRB(5, 10, 0, 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffFFE4E0)),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 130,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: size.width * 0.55,
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                        Alignment.center,
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: Color(
                                                                0xffFFADA7)),
                                                        child: Icon(
                                                            Icons
                                                                .cast_for_education,
                                                            size: 25,
                                                            color:
                                                            Colors.white),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        name,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        height: 1.5),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: AlignmentDirectional
                                                    .centerEnd,
                                                child: Text(
                                                  '85%',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: Color(0xffBB2634)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Số học liệu: 12",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Text(
                                                "Hoàn thành: 8",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 20),
                        Container(
                          width: size.width * 0.72,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 5),
                                  padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Color(0xffFFE4E0)),
                                  child: Column(
                                    crossAxisAlignment:
                                    CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        height: 130,
                                        child: Row(
                                          children: <Widget>[
                                            Container(
                                              width: size.width * 0.55,
                                              child: Column(
                                                children: <Widget>[
                                                  Row(
                                                    children: <Widget>[
                                                      Container(
                                                        alignment:
                                                        Alignment.center,
                                                        width: 40,
                                                        height: 40,
                                                        decoration: BoxDecoration(
                                                            borderRadius:
                                                            BorderRadius
                                                                .circular(
                                                                10),
                                                            color: Color(
                                                                0xffFFADA7)),
                                                        child: Icon(
                                                            Icons
                                                                .cast_for_education,
                                                            size: 25,
                                                            color:
                                                            Colors.white),
                                                      ),
                                                      SizedBox(width: 10),
                                                      Text(
                                                        name,
                                                        style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                            FontWeight.bold,
                                                            fontSize: 20),
                                                      ),
                                                    ],
                                                  ),
                                                  SizedBox(
                                                    height: 10,
                                                  ),
                                                  Text(
                                                    'H2 + O2 => HOHO ? Công thức huyền thoại này đúng hay sai?',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 16,
                                                        height: 1.5),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Expanded(
                                              child: Container(
                                                alignment: AlignmentDirectional
                                                    .centerEnd,
                                                child: Text(
                                                  '85%',
                                                  style: TextStyle(
                                                      fontSize: 18,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: Color(0xffBB2634)),
                                                ),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      Expanded(
                                          child: Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                "Số học liệu: 12",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600),
                                              ),
                                              Expanded(
                                                child: Container(),
                                              ),
                                              Text(
                                                "Hoàn thành: 8",
                                                style: TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
