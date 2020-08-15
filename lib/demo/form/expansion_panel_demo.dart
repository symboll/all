import 'package:flutter/material.dart';

class ExpansionPanelItem {
  final String headerText;
  final Widget body;
  bool isExpanded;

  ExpansionPanelItem({
    this.headerText,
    this.body,
    this.isExpanded
  });
}

class ExpansionPanelDemo extends StatefulWidget {
  @override
  _ExpansionPanelDemoState createState() => _ExpansionPanelDemoState();
}

class _ExpansionPanelDemoState extends State<ExpansionPanelDemo> {
  List<ExpansionPanelItem> _expansionPanelList;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    _expansionPanelList = [
      ExpansionPanelItem(
        headerText: 'Panel A',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity ,
          child: Text('Content for Panel A'),
        ),
        isExpanded: false
      ),
      ExpansionPanelItem(
        headerText: 'Panel B',
        body: Container(
          padding: EdgeInsets.all(16.0),
          width: double.infinity ,
          child: Text('Content for Panel B'),
        ),
        isExpanded: false
      )
    ];
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExpansionPanelList(
              expansionCallback: (int panelIndex, bool isExpanded) {
                setState(() {
                  _expansionPanelList[panelIndex].isExpanded = !isExpanded;
                });
              },
              children: _expansionPanelList.map(
                (ExpansionPanelItem item) => ExpansionPanel(
                  headerBuilder:(BuildContext context, bool isExpanded) {
                    return Container(
                      padding: EdgeInsets.all(16.0),
                      child: Text(
                        item.headerText,
                        style: Theme.of(context).textTheme.headline6
                      ),
                    );
                  },
                  body: item.body,
                  isExpanded: item.isExpanded
                )
              ).toList()
            )
          ],
        ),
      ),
    );
  }
}