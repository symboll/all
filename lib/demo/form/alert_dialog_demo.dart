import 'package:flutter/material.dart';
import 'dart:async';

enum Action {
  Cancel,
  Ok
}

class AlertDialogDemo extends StatefulWidget {
  @override
  _AlertDialogDemoState createState() => _AlertDialogDemoState();
}

class _AlertDialogDemoState extends State<AlertDialogDemo> {
  String _choice = "Nothing";
  Future<void> _openAlertDialog () async {
    final choice = await showDialog(
      context: context,
      barrierDismissible: false,
      builder:  (BuildContext context) {
        return  AlertDialog(
          title: Text('AlertDialog'),
          content: Text('Are you sure about this?'),
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Cancel);
              },
              textColor: Colors.red,
              child: Text('Cancel')
            ),
            FlatButton(
              onPressed: () {
                Navigator.pop(context, Action.Ok);
              },
              textColor: Theme.of(context).accentColor,
              child: Text('OK')
            ),
          ],
        );
      }
    );

    if(choice == null) return;
    switch (choice) {
      case Action.Cancel:
        setState(() {
          _choice = 'Cancel';
        });
        break;
      case Action.Ok:
        setState(() {
          _choice = 'OK';
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialogDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('$_choice'),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  onPressed: _openAlertDialog,
                  child: Text('Open Alert Dialog'),
                )
              ],
            )
          ]
        ),
      ),
    );
  }
}