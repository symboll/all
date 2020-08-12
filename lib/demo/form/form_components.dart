import 'package:flutter/material.dart';
import 'radio_demo.dart';
import 'form_demo.dart';
import 'checkbox_demo.dart';
import 'switch_demo.dart';
class FormComponents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FormComponents'),
        elevation: 0.0,
      ),
      body: ListView(
        children: <Widget>[
          ListItem(
            title: "FormDemo",
            page: FormDemo()
          ),
          ListItem(
            title: "CheckBoxDemo",
            page: CheckBoxDemo()
          ),
          ListItem(
            title: "RadioDemo",
            page: RadioDemo()
          ),
           ListItem(
            title: "SwitchDemo",
            page: SwitchDemo()
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