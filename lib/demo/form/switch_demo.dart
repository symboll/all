import 'package:flutter/material.dart';


class SwitchDemo extends StatefulWidget {
  @override
  _SwitchDemoState createState() => _SwitchDemoState();
}

class _SwitchDemoState extends State<SwitchDemo> {
  bool _hasSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SwitchDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [      
            SwitchListTile(
              value: _hasSelected,
              onChanged: (value) {
                setState(() {
                  _hasSelected = value;
                });
              },
              title: Text('Has Selected'),
              subtitle: Text('Description'),
              secondary: Icon(Icons.date_range),
              selected: _hasSelected,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Switch(
                //   value: _hasSelected,
                //   onChanged: (value) {
                //     setState(() {
                //       _hasSelected = value;
                //     });
                //   }
                // )
              ],
            )
          ],
        ),
      ),
    );
  }
}