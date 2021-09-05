import 'package:fifth/third.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class Fourt extends StatefulWidget {
  const Fourt({Key? key}) : super(key: key);

  @override
  _FourtState createState() => _FourtState();
}

class _FourtState extends State<Fourt> {
  double rate = 5.0;
  void onchanged(double value) {
    setState(() {
      rate = value;
    });
  }

  DateTime? _selectedDay;
  DateTime _focusedDay = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 13.0),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.grey,
              backgroundImage: AssetImage("images/avatar.png"),
            ),
          ),
        ],
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Third()));
          },
          child: Container(
            margin: EdgeInsetsDirectional.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: .2, color: Colors.grey),
            ),
            child: Icon(
              Icons.arrow_back,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 14),
          // decoration: BoxDecoration(
          //     gradient:
          //         LinearGradient(colors: [Color(0xff1A1A1A), Color(0xff5D3016)])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TableCalendar(
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    setState(() {
                      _selectedDay = selectedDay;
                      _focusedDay =
                          focusedDay; // update `_focusedDay` here as well
                    });
                  },
                  calendarFormat: CalendarFormat.month,
                  headerStyle: HeaderStyle(
                      formatButtonVisible: false,
                      // titleCentered: true,
                      rightChevronPadding: EdgeInsets.all(0),
                      leftChevronMargin: EdgeInsets.all(0),
                      titleTextStyle: TextStyle(color: Colors.white),
                      rightChevronIcon: Icon(Icons.arrow_forward,
                          color: Colors.white, size: 15),
                      leftChevronIcon: Icon(Icons.arrow_back,
                          color: Colors.white, size: 15)),
                  daysOfWeekStyle: DaysOfWeekStyle(
                      weekdayStyle: TextStyle(color: Colors.white),
                      weekendStyle: TextStyle(color: Colors.white)),
                  calendarStyle: CalendarStyle(
                      isTodayHighlighted: false,
                      weekendTextStyle: TextStyle(color: Colors.white),
                      outsideDaysVisible: false,
                      defaultTextStyle: TextStyle(color: Colors.white),
                      // todayDecoration: ,
                      selectedDecoration: BoxDecoration(
                          color: Colors.orange[800],
                          borderRadius: BorderRadius.circular(30))),
                  calendarBuilders:
                      CalendarBuilders(headerTitleBuilder: (context, day) {
                    DateFormat formatter = DateFormat('MMM');
                    DateFormat formatter2 = DateFormat('MMMM');

                    String previous = formatter
                        .format(DateTime(day.year, day.month - 1, day.day));
                    String forward = formatter
                        .format(DateTime(day.year, day.month + 1, day.day));

                    String current = formatter2.format(day);
                    // String formatDate(DateTime date) => new DateFormat("MMMM d").format(date);
                    return Row(
                      children: [
                        Text(
                          previous,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                        Expanded(
                            child: Center(
                                child: Text(current,
                                    style: TextStyle(
                                        fontSize: 12, color: Colors.white)))),
                        Text(
                          forward,
                          style: TextStyle(fontSize: 12, color: Colors.white),
                        ),
                      ],
                    );
                  }),
                  focusedDay: _focusedDay,
                  firstDay: DateTime(1996),
                  lastDay: DateTime(2050)),
              SizedBox(
                height: 15,
              ),
              Text(
                "Ongoing",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                height: 110,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "9 AM",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "10 AM",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Color(0xff1F1F1F),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Mobile App Design",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Mike and Anita",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage("images/bat.jpg"),
                                ),
                                SizedBox(
                                  width: 8,
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("images/spider.jpg"),
                                ),
                                Expanded(
                                  child: Container(
                                      padding: EdgeInsets.only(right: 20),
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "9.00 AM - 10.00 AM",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.normal),
                                      )),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  Text(
                    "10 AM",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.normal),
                  ),
                  Expanded(
                    child: SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                        inactiveTrackColor: Colors.orange,
                        activeTrackColor: Colors.white,
                        trackShape: RectangularSliderTrackShape(),
                        trackHeight: 2,
                      ),
                      child: Slider(
                          activeColor: Colors.white,
                          value: rate,
                          min: 1,
                          max: 20,
                          onChanged: onchanged),
                    ),
                  ),
                ],
              ),
              Container(
                padding: EdgeInsets.only(right: 20),
                height: 110,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "11 AM",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          ),
                          Text(
                            "12 PM",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.normal),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(left: 25, top: 10, bottom: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.orange[600],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Software Testing",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Anita and David",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 13,
                                  fontWeight: FontWeight.normal),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage: AssetImage("images/bat.jpg"),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                CircleAvatar(
                                  radius: 15,
                                  backgroundImage:
                                      AssetImage("images/spider.jpg"),
                                ),
                                Expanded(
                                  child: Container(
                                      padding: EdgeInsets.only(right: 20),
                                      alignment: Alignment.centerRight,
                                      child: Text(
                                        "11.00 AM - 12.00 AM",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 11,
                                            fontWeight: FontWeight.normal),
                                      )),
                                ),
                              ],
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
      ),
    );
  }
}
