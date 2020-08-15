import 'package:flutter/material.dart';
import 'dart:async';


class SnackBarDemo extends StatefulWidget {
  @override
  _SnackBarDemoState createState() => _SnackBarDemoState();
}

class _SnackBarDemoState extends State<SnackBarDemo> {
  final _snackBarScaffoldKey = GlobalKey<ScaffoldState>();

  _showSnackBar () {
    _snackBarScaffoldKey.currentState
    .showSnackBar(
      SnackBar(
        content: Text('Processing...'),
        action: SnackBarAction(
          label: 'Ok',
          onPressed: () {}
        ),
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _snackBarScaffoldKey,
      appBar: AppBar(
        title: Text('SnackBarDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed:_showSnackBar , 
                  child: Text('Open SnackBar')
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}