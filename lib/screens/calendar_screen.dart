/*Code by Iman Nabil*/
import 'dart:developer';

import 'package:first_steps/assets/colors.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarScreen extends StatefulWidget {
  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  var days = " ";

  DateTime today = DateTime.now();
  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
      if (day.isAfter(DateTime.now())) {
        days = "Please enter a valid date";
      } else {
        days =
            "Your baby is ${((DateTime.now()).difference(day).inDays)} days now! ";
      }
      ;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Container(
                  padding: EdgeInsets.only(top: 10),
                  child: Text("Pick your baby's birthday!")),
              TableCalendar(
                availableGestures: AvailableGestures.all,
                firstDay: DateTime.utc(2010, 10, 20),
                lastDay: DateTime.utc(2040, 10, 20),
                focusedDay: today,
                selectedDayPredicate: ((day) => isSameDay(day, today)),
                onDaySelected: _onDaySelected,
                headerVisible: true,
                daysOfWeekVisible: true,
                sixWeekMonthsEnforced: true,
                calendarFormat: CalendarFormat.month,
                shouldFillViewport: false,
                headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    titleCentered: true,
                    titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: kbottomAppBarColor,
                        fontWeight: FontWeight.w800)),
                calendarStyle: CalendarStyle(
                    todayTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold)),
              ),
              Text(days)
            ],
          ),
        ),
      ),
    );
  }
}
