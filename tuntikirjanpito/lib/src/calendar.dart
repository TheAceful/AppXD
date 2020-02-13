import 'package:flutter/material.dart';
import 'package:tuntikirjanpito/src/app.dart';
import 'package:table_calendar/table_calendar.dart';

class SecondPage extends StatefulWidget{

  @override
  SecondPageState createState() => SecondPageState();
  
}

class SecondPageState extends State <SecondPage> {
CalendarController _controller;

  void initState(){

    super.initState();
    _controller = CalendarController();
    
  }
  
  Widget build(context){
    return new Scaffold (
      backgroundColor: bgColor,
      appBar: new AppBar(title: new Text('Calendar'),
      backgroundColor: barColor,
    ),
    body: new Container(
      child: new Center(
        child: new Column(
          children: <Widget>[
            TableCalendar(calendarController: _controller,
              startingDayOfWeek: StartingDayOfWeek.monday,
              availableCalendarFormats: const {
              CalendarFormat.month: 'month',
              CalendarFormat.twoWeeks: 'Two weeks'
              },
              calendarStyle: CalendarStyle(
                todayColor: barColor, 
              ),
            )
          ],
        ),
      ),
    ),
    );
  }
}