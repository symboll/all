import 'package:flutter/material.dart';
import '../list_item.dart';

import 'inherited_widget_demo.dart';
import 'scope_mode_demo.dart';
import 'state_management_demo.dart';


class StateComponents extends StatelessWidget {
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
            title: "StateManagementDemo",
            page: StateManagementDemo()
          ),   
          ListItem(
            title: "InheritedWidgetDemo",
            page: InheritedWidgetDemo()
          ),      
          ListItem(
            title: "ScopeModeDemo",
            page: ScopeModeDemo(),
          )    
        ],
      )
    );
  }
}
