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
        padding: EdgeInsets.zero,
        children: <Widget>[
          // DrawerHeader(
          //   child: Text('header'.toUpperCase()),
          //   decoration: BoxDecoration(
          //     color: Colors.grey[100]
          //   ),
          // ),
          UserAccountsDrawerHeader(
            accountName: Text('Likanghua',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            accountEmail: Text('272011007@qq.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage('https://i2.hdslb.com/bfs/face/3ac438751d94a2db752d276017e9964b4b217387.jpg_64x64.jpg'),
            ),
            decoration: BoxDecoration(
              color: Colors.yellow[400],
              image: DecorationImage(
                image: NetworkImage('https://user-gold-cdn.xitu.io/2017/11/20/15fd7937bfca9d71?w=650&h=910&f=png&s=167319'),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                  Colors.yellow[400].withOpacity(0.6), 
                  BlendMode.hardLight)
              )
            ),
          ),
          ListTile(
            title: Text('Message', textAlign: TextAlign.right,),
            trailing: Icon(Icons.message, color: Colors.black12, size: 22.0,),
            // leading: ,          // 在标签的左侧 显示小图标
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('Favorite', textAlign: TextAlign.right,),
            trailing: Icon(Icons.favorite, color: Colors.black12, size: 22.0,),
            onTap: ()=> Navigator.pop(context),
          ),
          ListTile(
            title: Text('Settings', textAlign: TextAlign.right,),
            trailing: Icon(Icons.settings, color: Colors.black12, size: 22.0,),
            onTap: ()=> Navigator.pop(context),
          )
        ],
      ),
    );
  }
}