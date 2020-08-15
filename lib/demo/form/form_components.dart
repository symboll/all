import 'package:flutter/material.dart';
import 'alert_dialog_demo.dart';
import 'bottom_sheet_demo.dart';
import 'datetime_demo.dart';
import 'expansion_panel_demo.dart';
import 'radio_demo.dart';
import 'form_demo.dart';
import 'checkbox_demo.dart';
import 'simple_dialog_demo.dart';
import 'slider_demo.dart';
import 'snack_bar_demo.dart';
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
          ListItem(
            title: "SliderDemo",
            page: SliderDemo()
          ),
          ListItem(
            title: "DateTimeDemo",
            page: DateTimeDemo()
          ),
          ListItem(
            title: "SimpleDialogDemo",
            page: SimpleDialogDemo()
          ),
          ListItem(
            title: "AlertDialogDemo",
            page: AlertDialogDemo()
          ),
          ListItem(
            title: "BottomSheetDemo",
            page: BottomSheetDemo()
          ),
          ListItem(
            title: "SnackBarDemo",
            page: SnackBarDemo()
          ),
          ListItem(
            title: "ExpansionPanelDemo",
            page: ExpansionPanelDemo()
          )
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