import 'package:flutter/material.dart';

class DrawerDemo extends StatelessWidget {
  const DrawerDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   child: Container(
    //     color: Colors.white,
    //     padding: EdgeInsets.all(8.0),
    //     child: Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: <Widget>[
    //         Text('this. is Drawer')
    //       ],
    //     ),
    //   ),
    // );
    return Drawer(
      child: ListView(
        padding: EdgeInsets.all(8.0),
        children: <Widget>[
          DrawerHeader(
            child: Text('header'.toUpperCase()),
            decoration: BoxDecoration(
              color: Colors.grey[100]
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
            // leading: ,          // 在标签的左侧 显示小图标
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
          )
        ],
      ),
    );
  }
}