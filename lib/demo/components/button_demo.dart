

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonDemo'),
        elevation: 0.0,
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text('Button'),
                  splashColor: Colors.black.withOpacity(0.3),
                  textColor: Theme.of(context).accentColor
                ),
                SizedBox(width: 20.0),
                FlatButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('Button'),
                  splashColor: Colors.black.withOpacity(0.3),
                  textColor: Theme.of(context).accentColor
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                RaisedButton(
                  child: Text('Button'),
                  onPressed: () {},
                  splashColor: Colors.black.withOpacity(0.3),
                  textColor: Theme.of(context).accentColor
                ),
                SizedBox(width: 20.0),
                RaisedButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add),
                  label: Text('nuo'),
                  splashColor: Colors.black.withOpacity(0.3),
                  textColor: Colors.white,
                  color: Theme.of(context).accentColor,
                  elevation: 0.0,
                ),
                SizedBox(width: 16.0),
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonColor: Theme.of(context).accentColor,
                    buttonTheme: ButtonThemeData(
                      textTheme: ButtonTextTheme.primary,
                      // shape: BeveledRectangleBorder(
                      //   borderRadius: BorderRadius.circular(8.0)
                      // )
                      shape: StadiumBorder()
                    )
                  ),
                  child:  RaisedButton(
                    child: Text('Button'),
                    onPressed: () {},
                  )
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                OutlineButton(
                  onPressed: () {},
                  child: Text('Button'),
                  borderSide: BorderSide(
                    color: Colors.pink
                  ),
                  splashColor: Colors.black.withOpacity(0.3),
                  textColor: Theme.of(context).accentColor,
                  highlightedBorderColor: Colors.green,
                ),
                SizedBox(width: 16.0),
                OutlineButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.add), 
                  label: Text('Button'),
                  splashColor: Colors.black.withOpacity(0.3),
                  textColor: Theme.of(context).accentColor
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: 130.0,
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text('Button'),
                    splashColor:Colors.red,
                    borderSide: BorderSide(
                      color: Colors.blue
                    ),
                    textColor: Colors.green,
                    highlightedBorderColor: Colors.orange,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text('Button'),
                    splashColor:Colors.red,
                    borderSide: BorderSide(
                      color: Colors.blue
                    ),
                    textColor: Colors.green,
                    highlightedBorderColor: Colors.orange,
                  ),
                ),
                SizedBox(width: 32.0),
                Expanded(
                  flex: 2,
                  child: OutlineButton(
                    onPressed: () {},
                    child: Text('Button'),
                    splashColor:Colors.red,
                    borderSide: BorderSide(
                      color: Colors.blue
                    ),
                    textColor: Colors.green,
                    highlightedBorderColor: Colors.orange,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Theme(
                  data: Theme.of(context).copyWith(
                    buttonTheme: ButtonThemeData(
                      padding: EdgeInsets.symmetric(horizontal: 0.0)
                    )
                  ),
                  child: ButtonBar(
                    children: <Widget>[
                      OutlineButton(
                        onPressed: () {},
                        child: Text('Button'),
                        splashColor:Colors.red,
                        borderSide: BorderSide(
                          color: Colors.blue
                        ),
                        textColor: Colors.green,
                        highlightedBorderColor: Colors.orange,
                      ),
                      OutlineButton(
                        onPressed: () {},
                        child: Text('Button'),
                        splashColor:Colors.red,
                        borderSide: BorderSide(
                          color: Colors.blue
                        ),
                        textColor: Colors.green,
                        highlightedBorderColor: Colors.orange,
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
