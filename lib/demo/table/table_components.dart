import 'package:flutter/material.dart';
import '../list_item.dart';

import 'card_demo.dart';
import 'data_table_demo.dart';
import 'paginated_data_table_demo.dart';
import 'stepper_demo.dart';

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
          ListItem(
            title: "PaginatedDataTableDemo",
            page: PaginatedDataTableDemo()
          ),
          ListItem(
            title: "CardDemo",
            page: CardDemo()
          ),
          ListItem(
            title: "StepperDemo",
            page: StepperDemo()
          ),
          
        ],
      )
    );
  }
}