import 'package:flutter/material.dart';
import '../list_item.dart';

import 'stream_demo.dart';


class StreamComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TableComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "StreamDemo",
            page: StreamDemo()
          )
        ],
      )
    );
  }
}