import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class DateTimeDemo extends StatefulWidget {
  @override
  _DateTimeDemoState createState() => _DateTimeDemoState();
}

class _DateTimeDemoState extends State<DateTimeDemo> {
  DateTime _date = DateTime.now();
  TimeOfDay _time = TimeOfDay(hour: 9, minute: 30);
  Future<void> _selectDate () async {
    final DateTime date = await showDatePicker(
      context: context,
      initialDate: _date,
      firstDate: DateTime(1900),
      lastDate: DateTime(2200),
    );
    if(date == null)  return;
    setState(() {
      _date = date;
    });
  }
  Future<void> _selectTime () async {
    final TimeOfDay time = await showTimePicker(
      context: context,
      initialTime: _time
    );

    if(time == null) return;
    setState(() {
      _time = time;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DateTimeDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: _selectDate,
                  child: Row(
                    children: <Widget>[
                      Text(DateFormat.yMd().format(_date)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                InkWell(
                  onTap: _selectTime,
                  child: Row(
                    children: <Widget>[
                      Text(_time.format(context)),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}