import 'package:flutter/material.dart';

import 'data_table_demo.dart';

class TableComponents extends StatelessWidget {
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
            title: "DataTableDemo",
            page: DataTableDemo()
          ),
          
        ],
      )
    );
  }
}


class ListItem extends StatelessWidget {
  final String title;
  final Widget page;
  ListItem({
    this.title,
    this.page
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => page
          )
        );
      },
    );
  }
}