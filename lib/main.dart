import 'package:flutter/material.dart';
import 'pages/index_page.dart';

void main() => runApp(App());

class App extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: IndexPage(),
        theme: ThemeData(
          primaryColor: Colors.blue[200]
        ),
      ),
    );
  }
}