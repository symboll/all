import 'package:flutter/material.dart';

class RadioDemo extends StatefulWidget {
  @override
  _RadioDemoState createState() => _RadioDemoState();
}

class _RadioDemoState extends State<RadioDemo> {
  int _radioGroupA = 0;
  void _radioValueChanged (value) {
    setState(() {
      _radioGroupA = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RadioDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('RadioGroupValue: $_radioGroupA'),
            SizedBox(height: 16.0),
            RadioListTile(
              value: 0,
              groupValue: _radioGroupA, 
              onChanged: _radioValueChanged,
              title: Text('Option A'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_1),
              selected: _radioGroupA == 0,
            ),
            RadioListTile(
              value: 1,
              groupValue: _radioGroupA, 
              onChanged: _radioValueChanged,
              title: Text('Option B'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.filter_2),
              selected: _radioGroupA == 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Radio(
                //   value: 0,
                //   groupValue: _radioGroupA,
                //   onChanged: _radioValueChanged,
                // ),
                // Radio(
                //   value: 1,
                //   groupValue: _radioGroupA,
                //   onChanged: _radioValueChanged,
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}