import 'package:flutter/material.dart';
import 'dart:async';

enum Option{
  A,B,C,D,E
}

class BottomSheetDemo extends StatefulWidget {
  @override
  _BottomSheetDemoState createState() => _BottomSheetDemoState();
}

class _BottomSheetDemoState extends State<BottomSheetDemo> {
  String _choice = "Noting";

  final _bottomSheetScaffoldKey = GlobalKey<ScaffoldState>();
  _openBottomSheet () {
    _bottomSheetScaffoldKey
      .currentState
      .showBottomSheet((BuildContext context) => BottomAppBar(
        child: Container(
          height: 90.0,
          width: double.infinity,
          padding: EdgeInsets.all(16.0),
          child: Row(
            children: <Widget>[
              Icon(Icons.pause_circle_outline),
              SizedBox(width: 16.0),
              Text('01:30/03:30'),
              Expanded(
                child: Text('Fix you - Coldpay', 
                  textAlign: TextAlign.right,
                )
              )
            ]
          ),
        ),
      ));
  }
  Future<void> _openModelBottomSheet () async {
    final choice = await showModalBottomSheet(
      context: context,
      builder: (BuildContext context) => Container(
        height: 200.0,
        child: SingleChildScrollView (
          child: Column(
            children: <Widget>[
              ListTile(
                title:Text('Option A'),
                onTap: () {
                  setState(() {
                    Navigator.pop(context, Option.A);
                  });
                },
              ),
              ListTile(
                title:Text('Option B'),
                onTap: () {
                  setState(() {
                    Navigator.pop(context, Option.B);
                  });
                },
              ),
              ListTile(
                title:Text('Option C'),
                onTap: () {
                  setState(() {
                    Navigator.pop(context, Option.C);
                  });
                },
              ),
              ListTile(
                title:Text('Option D'),
                onTap: () {
                  setState(() {
                    Navigator.pop(context, Option.D);
                  });
                },
              ),
              ListTile(
                title:Text('Option E'),
                onTap: () {
                  setState(() {
                    Navigator.pop(context, Option.E);
                  });
                },
              )
            ],
          )
        )
      )
    );

    if(choice == null) { return;}
    switch (choice) {
      case Option.A:
        setState(() {
          _choice = "A";
        });
        break;
      case Option.B:
        setState(() {
          _choice = "B";
        });
        break;
      case Option.C:
        setState(() {
          _choice = "C";
        });
        break;
      case Option.D:
        setState(() {
          _choice = "D";
        });
        break;
      case Option.E:
        setState(() {
          _choice = "E";
        });
        break;
      default:
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _bottomSheetScaffoldKey,
      appBar: AppBar(
        title: Text('BottomSheetDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FlatButton(
              onPressed: _openBottomSheet,
              child: Text('Open BottomSheet')
            ),
            SizedBox(height: 20.0,),
            Text('$_choice'),
            FlatButton(
              onPressed: _openModelBottomSheet,
              child: Text('Model BottomSheet')
            )
          ]
        ),
      ),
    );
  }
}