import 'package:flutter/material.dart';

class NavigatorDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Wrap(
          children: <Widget>[
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/home'),
              child: Text('Home')
            ),
            FlatButton(
              // onPressed: () => Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (BuildContext context) => Page(title: 'About')
              //   )
              // ),
              onPressed: () => Navigator.pushNamed(context, '/about'),
              child: Text('About')
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/form'),
              child: Text('Form')
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/mdc'),
              child: Text('Mdc')
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/table'),
              child: Text('Table')
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/state-management'),
              child: Text('StateManagement')
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/stream'),
              child: Text('Stream')
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/rxDart'),
              child: Text('RxDart')
            ),
            FlatButton(
              onPressed: () => Navigator.pushNamed(context, '/bloc'),
              child: Text('Bloc')
            ),
          ],
        ),
      ),
    );
  }
}

class Page extends StatelessWidget {
  final String title;
  Page({
    this.title
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text(title),
        elevation: 0.0,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed:  () => Navigator.pop(context)
      ),
    );
  }
}