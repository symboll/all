import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('app',
            style: TextStyle(
              color: Colors.white
            ),
          ),
          elevation: 0.0,
        ),
        body: Home()
      ),
      theme: ThemeData(
        primaryColor: Colors.pink[200]
      ),

    );
  }
}
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('name')
            ],
          )
        ],
      ),
    );
  }
}
